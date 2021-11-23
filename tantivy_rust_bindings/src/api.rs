mod search_engine;

use std::{collections::BTreeMap, sync::Mutex};

use anyhow::Result;

use tantivy::schema::{self, IndexRecordOption, TextFieldIndexing};

use search_engine::{SearchEngine, SEARCH_ENGINES_MAP};

/// Dummy function to test the tantivy binding.
pub fn binding_test(string: String) -> Result<String> {
    if string == "ping" {
        return Ok("pong".to_string());
    }

    Ok("You should had say ping :/".to_string())
}

pub struct SchemaField {
    pub name: String,
    pub field_type: String,
    pub index_record_option: String,
    pub tokenizer_name: String,
    pub is_stored: bool,
}

impl SchemaField {
    fn to_text_field_options(&self) -> schema::TextOptions {
        let mut field_options = schema::TextOptions::default();

        if self.is_stored {
            field_options = field_options.set_stored();
        }

        if self.index_record_option != "none" {
            let index_option = match self.index_record_option.as_str() {
                "withFreqs" => IndexRecordOption::WithFreqs,
                "withFreqsAndPositions" => IndexRecordOption::WithFreqsAndPositions,
                "basic" | _ => IndexRecordOption::Basic,
            };

            field_options = field_options
                .set_indexing_options(TextFieldIndexing::default().set_index_option(index_option));
        }

        field_options
    }

    fn to_int_options(&self) -> schema::IntOptions {
        let mut field_options = schema::IntOptions::default();

        if self.is_stored {
            field_options = field_options.set_stored();
        }

        field_options
    }
}

pub struct Schema {
    pub path: String,
    pub name: String,
    pub fields: Vec<SchemaField>,
}

impl Schema {
    fn build(&self) -> schema::Schema {
        let mut builder = schema::SchemaBuilder::new();
        for field in &self.fields {
            match field.field_type.as_str() {
                "i64" => builder.add_i64_field(&field.name, field.to_int_options()),
                "f64" => builder.add_f64_field(&field.name, field.to_int_options()),
                "bytes" => builder.add_bytes_field(&field.name, schema::BytesOptions::default()),
                "facet" => builder.add_facet_field(&field.name, schema::FacetOptions::default()),
                "text" | _ => builder.add_text_field(&field.name, field.to_text_field_options()),
            };
        }

        builder.build()
    }
}

pub fn set_up() -> Result<String> {
    SEARCH_ENGINES_MAP.get_or_init(|| Mutex::new(BTreeMap::new()));

    Ok("ok".to_string())
}

pub fn close_search_engine(name: String) -> Result<String> {
    let mut engines_map = SEARCH_ENGINES_MAP.get().unwrap().lock().unwrap();

    engines_map.remove(&name);

    Ok("lorem".to_string())
}

pub fn open_or_create_index(schema: Schema) -> Result<String> {
    let mut engines_map = SEARCH_ENGINES_MAP.get().unwrap().lock().unwrap();

    if engines_map.contains_key(&schema.name) {
        return Ok("Engine already started".to_string());
    }

    let index = tantivy::Index::open_or_create(
        tantivy::directory::MmapDirectory::open(&schema.path).unwrap(),
        schema.build(),
    );

    let index_ref = &index.as_ref().unwrap();
    let writer = index_ref.writer(50_000_00).unwrap();
    let reader = index_ref.reader().unwrap();
    engines_map.insert(
        schema.name,
        SearchEngine::new(index.unwrap(), writer, reader),
    );

    Ok("Engine Open".to_string())
}

pub struct Document {
    pub index_name: String,
    pub document_fields: Vec<DocumentFields>,
}

pub struct DocumentFields {
    pub name: String,
    pub field_type: String,
    pub bytes: Option<Vec<u8>>,
    pub text: Option<String>,
    pub i64: Option<i64>,
    pub f64: Option<f64>,
}

pub fn index_documents(documents: Vec<Document>) -> Result<String> {
    let mut engines_map = SEARCH_ENGINES_MAP.get().unwrap().lock().unwrap();
    let mut indexes: Vec<&String> = Vec::new();
    for document in &documents {
        if !indexes.contains(&&document.index_name) {
            indexes.push(&document.index_name);
        }
        let engine = engines_map.get_mut(&document.index_name).unwrap();
        let schema = engine.index.schema();
        let mut doc = tantivy::Document::default();
        for field in &document.document_fields {
            let schema_field = schema.get_field(&field.name).unwrap();
            match field.field_type.as_str() {
                "text" => {
                    let text = field.text.as_deref().unwrap();
                    doc.add_text(schema_field, text);
                }
                _ => {}
            }
        }
        engine.add_to_writer(doc).unwrap();
    }

    for index_name in indexes {
        engines_map
            .get_mut(index_name)
            .unwrap()
            .writer_commit()
            .unwrap();
    }

    Ok("lorem".to_string())
}

pub struct SearchQuery {
    pub index_name: String,
    pub search: String,
    pub fields: Vec<String>,
}

pub struct SearchResult {
    pub score: f32,
    pub doc_result: String,
}

pub fn search(query: SearchQuery) -> Result<Vec<SearchResult>> {
    let mut engines_map = SEARCH_ENGINES_MAP.get().unwrap().lock().unwrap();
    let engine = engines_map.get_mut(&query.index_name).unwrap();

    let results = engine
        .search(&query.search, &query.fields)?
        .iter()
        .map(|(score, result)| SearchResult {
            score: score.to_owned(),
            doc_result: result.to_owned(),
        })
        .collect();

    Ok(results)
}
