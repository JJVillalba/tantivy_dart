part of tantivy_dart;

// Helper class for creating schemas
class SchemaBuilder {
  SchemaBuilder();

  final List<SchemaField> fields = [];

  void addI64Field({required String name, bool isStored = false}) {
    fields.add(SchemaFieldI64(name: name, isStored: isStored));
  }

  void addF64Field({required String name, bool isStored = false}) {
    fields.add(SchemaFieldF64(name: name, isStored: isStored));
  }

  void addTextField({
    required String name,
    IndexRecordOption indexOption = IndexRecordOption.none,
    bool isStored = false,
  }) {
    fields.add(SchemaFieldText(
      name: name,
      indexOption: indexOption,
      isStored: false,
      tokenizerName: 'default',
    ));
  }

  // void addFacetField({
  //   required String name,
  // }) {
  //   fields.add(SchemaFieldFacet(name: name));
  // }

  // void addBytesField({
  //   required String name,
  // }) {
  //   fields.add(SchemaFieldBytes(name: name));
  // }
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

  tantivy.SchemaField _toTantivySchemaField() {
    return map(
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
