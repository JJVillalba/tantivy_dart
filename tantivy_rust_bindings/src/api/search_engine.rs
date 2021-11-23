use std::{
    borrow::{Borrow, BorrowMut},
    collections::BTreeMap,
    sync::Mutex,
};

use once_cell::sync::OnceCell;

use anyhow::Result;

use tantivy::{
    collector::TopDocs, query::QueryParser, schema::*, Document, Index, IndexReader, IndexWriter,
};

pub static SEARCH_ENGINES_MAP: OnceCell<Mutex<BTreeMap<String, SearchEngine>>> = OnceCell::new();

pub struct SearchEngine {
    pub index: Index,
    writer: Option<IndexWriter>,
    reader: Option<IndexReader>,
}

impl SearchEngine {
    pub fn new(
        index: Index,
        writer: IndexWriter,
        reader: IndexReader,
    ) -> Self {
        SearchEngine {
            index: index,
            reader: Some(reader),
            writer: Some(writer),
        }
    }


    pub fn add_to_writer(&mut self, document: Document) -> Result<()> {
        let writer = self.writer.borrow_mut().as_mut().unwrap();
        writer.add_document(document);

        Ok(())
    }

    pub fn writer_commit(&mut self) -> Result<()> {
        let writer = self.writer.borrow_mut().as_mut().unwrap();
        writer.commit()?;

        Ok(())
    }

    pub fn search(&mut self, query: &str, fields: &Vec<String>) -> Result<Vec<(f32, String)>> {
        let reader = self.reader.borrow_mut().as_ref().unwrap();
        let index = self.index.borrow();
        let searcher = reader.searcher();
        let schema = index.schema();

        // let _fields: Vec<Field> = fields
        //     .iter()
        //     .map(|field| schema.get_field(field).unwrap())
        //     .collect();

        println!("fields");

        let query_parser = QueryParser::for_index(index, vec![schema.get_field("name").unwrap()]);
        let query = query_parser.parse_query(query).unwrap();
        let collector = TopDocs::with_limit(10);
        let top_documents = searcher.search(&query, &collector)?;

        println!("search");


        let result = top_documents
            .iter()
            .map(|(score, address)| {
                let doc = searcher.doc(address.to_owned()).unwrap();
                // let named_doc = schema.to_named_doc(&doc);
                // address.to_owned(),

                (score.to_owned(), schema.to_json(&doc))
            })
            .collect();

        println!("results");

        return Ok(result);
    }
}
