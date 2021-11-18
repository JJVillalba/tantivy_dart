part of tantivy_dart;

abstract class Document {
  tantivy.Document toDocument({required String indexName});
}

class Index<T extends Document> {
  /// Internally tantivy manages each Schema in a hashmap where the
  /// key is the name provided here. If this changes the index is recreated.
  final String name;

  /// Directory where the index must be created. If not exist it will be created.
  final Directory directory;

  /// Schema fields definition for the given schema
  final List<SchemaField> schema;

  Index({
    required this.directory,
    required this.name,
    required this.schema,
  });

  factory Index.withSchemaBuilder({
    required String name,
    required Directory directory,
    required SchemaBuilder Function(SchemaBuilder builder) schema,
  }) {
    final _schema = schema(SchemaBuilder()).fields;
    return Index(
      name: name,
      directory: directory,
      schema: _schema,
    );
  }

  Future<void> buildOrOpen() async {
    if (!directory.existsSync()) {
      await directory.create(recursive: true);
    }

    await Tantivy().bindings.openOrCreateIndex(
          schema: tantivy.Schema(
            name: name,
            path: directory.path,
            fields: schema.map((e) => e._to_tantivy_schema_field()).toList(),
          ),
        );
  }

  Future<List<String>> saveDocuments(List<T> documents) async {
    final docs = documents.map((e) => e.toDocument(indexName: name)).toList();
    await Tantivy().bindings.indexDocuments(documents: docs);
    return <String>[];
  }

  Future<List<Results>> search(String query, List<String> fields) async {
    final result = await Tantivy().bindings.search(
          query: tantivy.SearchQuery(
            indexName: name,
            search: query,
            fields: fields,
          ),
        );

    return result.map((e) => Results(e.score, e.docResult)).toList();
  }
}

@freezed
class Results with _$Results {
  factory Results(double score, String docJson) = _Results;
}

// Helper class for creating schemas
class SchemaBuilder {
  SchemaBuilder();

  final List<SchemaField> fields = [];

  void addI64Field({
    required String name,
  }) {
    fields.add(SchemaFieldI64(name: name));
  }

  void addF64Field({
    required String name,
  }) {
    fields.add(SchemaFieldF64(name: name));
  }

  void addTextField({
    required String name,
  }) {
    fields.add(SchemaFieldText(name: name));
  }

  void addFacetField({
    required String name,
  }) {
    fields.add(SchemaFieldFacet(name: name));
  }

  void addBytesField({
    required String name,
  }) {
    fields.add(SchemaFieldBytes(name: name));
  }
}

enum IndexRecordOption {
  none,
  basic,
  withFreqs,
  withFreqsAndPositions,
}

extension IndexRecordOptionExtension on IndexRecordOption {
  get name => toString().substring(17);
}

/// Sealed class fro schema types
@freezed
class SchemaField with _$SchemaField {
  const SchemaField._();

  const factory SchemaField.text({
    required String name,
    @Default(false) bool isStored,
    String? tokenizerName,
    @Default(IndexRecordOption.none) IndexRecordOption indexOption,
  }) = SchemaFieldText;

  const factory SchemaField.f64({
    required String name,
    @Default(false) bool isStored,
  }) = SchemaFieldF64;

  const factory SchemaField.i64({
    required String name,
    @Default(false) bool isStored,
  }) = SchemaFieldI64;

  const factory SchemaField.facet({
    required String name,
    @Default(false) bool isStored,
  }) = SchemaFieldFacet;

  const factory SchemaField.bytes({
    required String name,
    @Default(false) bool isStored,
  }) = SchemaFieldBytes;

  tantivy.SchemaField _to_tantivy_schema_field() {
    return this.map(
      text: (text) => tantivy.SchemaField(
        name: text.name,
        indexRecordOption: text.indexOption.name,
        isStored: isStored,
        tokenizerName: "default",
        fieldType: "text",
      ),
      f64: (f64) => tantivy.SchemaField(
        name: f64.name,
        indexRecordOption: "none",
        isStored: isStored,
        tokenizerName: "default",
        fieldType: "f64",
      ),
      i64: (i64) => tantivy.SchemaField(
        name: i64.name,
        indexRecordOption: "none",
        isStored: isStored,
        tokenizerName: "default",
        fieldType: "i64",
      ),
      facet: (facet) => tantivy.SchemaField(
        name: facet.name,
        indexRecordOption: "none",
        isStored: isStored,
        tokenizerName: "default",
        fieldType: "facet",
      ),
      bytes: (bytes) => tantivy.SchemaField(
        name: bytes.name,
        indexRecordOption: "none",
        isStored: isStored,
        tokenizerName: "default",
        fieldType: "bytes",
      ),
    );
  }
}
