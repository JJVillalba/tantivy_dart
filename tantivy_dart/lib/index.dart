part of tantivy_dart;



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
            fields: schema.map((e) => e._toTantivySchemaField()).toList(),
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


abstract class Document {
  tantivy.Document toDocument({required String indexName});
}

class DocumentBuilder {
  
}
