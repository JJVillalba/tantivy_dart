// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class TantivyDartBindings
    extends FlutterRustBridgeBase<TantivyDartBindingsWire> {
  factory TantivyDartBindings(ffi.DynamicLibrary dylib) =>
      TantivyDartBindingsImpl.raw(TantivyDartBindingsWire(dylib));

  TantivyDartBindings.raw(TantivyDartBindingsWire inner) : super(inner);

  Future<String> bindingTest({required String string, dynamic hint});

  Future<String> setUp({dynamic hint});

  Future<String> closeSearchEngine({required String name, dynamic hint});

  Future<String> openOrCreateIndex({required Schema schema, dynamic hint});

  Future<String> indexDocuments(
      {required List<Document> documents, dynamic hint});

  Future<List<SearchResult>> search({required SearchQuery query, dynamic hint});
}

class Document {
  final String indexName;

  final List<DocumentFields> documentFields;

  Document({
    required this.indexName,
    required this.documentFields,
  });
}

class DocumentFields {
  final String name;

  final String fieldType;

  final Uint8List? bytes;

  final String? text;

  final int? i64;

  final double? f64;

  DocumentFields({
    required this.name,
    required this.fieldType,
    this.bytes,
    this.text,
    this.i64,
    this.f64,
  });
}

class Schema {
  final String path;

  final String name;

  final List<SchemaField> fields;

  Schema({
    required this.path,
    required this.name,
    required this.fields,
  });
}

class SchemaField {
  final String name;

  final String fieldType;

  final String indexRecordOption;

  final String tokenizerName;

  final bool isStored;

  SchemaField({
    required this.name,
    required this.fieldType,
    required this.indexRecordOption,
    required this.tokenizerName,
    required this.isStored,
  });
}

class SearchQuery {
  final String indexName;

  final String search;

  final List<String> fields;

  SearchQuery({
    required this.indexName,
    required this.search,
    required this.fields,
  });
}

class SearchResult {
  final double score;

  final String docResult;

  SearchResult({
    required this.score,
    required this.docResult,
  });
}

// ------------------------- Implementation Details -------------------------

/// Implementations for TantivyDartBindings. Prefer using TantivyDartBindings if possible; but this class allows more
/// flexible customizations (such as subclassing to create an initializer, a logger, or
/// a timer).
class TantivyDartBindingsImpl extends TantivyDartBindings {
  TantivyDartBindingsImpl.raw(TantivyDartBindingsWire inner) : super.raw(inner);

  Future<String> bindingTest({required String string, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
          debugName: 'binding_test',
          callFfi: (port) =>
              inner.wire_binding_test(port, _api2wire_String(string)),
          parseSuccessData: _wire2api_String,
          hint: hint));

  Future<String> setUp({dynamic hint}) => executeNormal(FlutterRustBridgeTask(
      debugName: 'set_up',
      callFfi: (port) => inner.wire_set_up(port),
      parseSuccessData: _wire2api_String,
      hint: hint));

  Future<String> closeSearchEngine({required String name, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
          debugName: 'close_search_engine',
          callFfi: (port) =>
              inner.wire_close_search_engine(port, _api2wire_String(name)),
          parseSuccessData: _wire2api_String,
          hint: hint));

  Future<String> openOrCreateIndex({required Schema schema, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
          debugName: 'open_or_create_index',
          callFfi: (port) => inner.wire_open_or_create_index(
              port, _api2wire_box_autoadd_schema(schema)),
          parseSuccessData: _wire2api_String,
          hint: hint));

  Future<String> indexDocuments(
          {required List<Document> documents, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
          debugName: 'index_documents',
          callFfi: (port) => inner.wire_index_documents(
              port, _api2wire_list_document(documents)),
          parseSuccessData: _wire2api_String,
          hint: hint));

  Future<List<SearchResult>> search(
          {required SearchQuery query, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
          debugName: 'search',
          callFfi: (port) => inner.wire_search(
              port, _api2wire_box_autoadd_search_query(query)),
          parseSuccessData: _wire2api_list_search_result,
          hint: hint));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  ffi.Pointer<wire_StringList> _api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = _api2wire_String(raw[i]);
    }
    return ans;
  }

  bool _api2wire_bool(bool raw) {
    return raw;
  }

  ffi.Pointer<ffi.Double> _api2wire_box_autoadd_f64(double raw) {
    return inner.new_box_autoadd_f64(raw);
  }

  ffi.Pointer<ffi.Int64> _api2wire_box_autoadd_i64(int raw) {
    return inner.new_box_autoadd_i64(raw);
  }

  ffi.Pointer<wire_Schema> _api2wire_box_autoadd_schema(Schema raw) {
    final ptr = inner.new_box_autoadd_schema();
    _api_fill_to_wire_schema(raw, ptr.ref);
    return ptr;
  }

  ffi.Pointer<wire_SearchQuery> _api2wire_box_autoadd_search_query(
      SearchQuery raw) {
    final ptr = inner.new_box_autoadd_search_query();
    _api_fill_to_wire_search_query(raw, ptr.ref);
    return ptr;
  }

  double _api2wire_f64(double raw) {
    return raw;
  }

  int _api2wire_i64(int raw) {
    return raw;
  }

  ffi.Pointer<wire_list_document> _api2wire_list_document(List<Document> raw) {
    final ans = inner.new_list_document(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_document(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  ffi.Pointer<wire_list_document_fields> _api2wire_list_document_fields(
      List<DocumentFields> raw) {
    final ans = inner.new_list_document_fields(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_document_fields(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  ffi.Pointer<wire_list_schema_field> _api2wire_list_schema_field(
      List<SchemaField> raw) {
    final ans = inner.new_list_schema_field(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_schema_field(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : _api2wire_String(raw);
  }

  ffi.Pointer<ffi.Double> _api2wire_opt_box_autoadd_f64(double? raw) {
    return raw == null ? ffi.nullptr : _api2wire_box_autoadd_f64(raw);
  }

  ffi.Pointer<ffi.Int64> _api2wire_opt_box_autoadd_i64(int? raw) {
    return raw == null ? ffi.nullptr : _api2wire_box_autoadd_i64(raw);
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_opt_uint_8_list(Uint8List? raw) {
    return raw == null ? ffi.nullptr : _api2wire_uint_8_list(raw);
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_schema(
      Schema apiObj, ffi.Pointer<wire_Schema> wireObj) {
    _api_fill_to_wire_schema(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_search_query(
      SearchQuery apiObj, ffi.Pointer<wire_SearchQuery> wireObj) {
    _api_fill_to_wire_search_query(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_document(Document apiObj, wire_Document wireObj) {
    wireObj.index_name = _api2wire_String(apiObj.indexName);
    wireObj.document_fields =
        _api2wire_list_document_fields(apiObj.documentFields);
  }

  void _api_fill_to_wire_document_fields(
      DocumentFields apiObj, wire_DocumentFields wireObj) {
    wireObj.name = _api2wire_String(apiObj.name);
    wireObj.field_type = _api2wire_String(apiObj.fieldType);
    wireObj.bytes = _api2wire_opt_uint_8_list(apiObj.bytes);
    wireObj.text = _api2wire_opt_String(apiObj.text);
    wireObj.i64 = _api2wire_opt_box_autoadd_i64(apiObj.i64);
    wireObj.f64 = _api2wire_opt_box_autoadd_f64(apiObj.f64);
  }

  void _api_fill_to_wire_schema(Schema apiObj, wire_Schema wireObj) {
    wireObj.path = _api2wire_String(apiObj.path);
    wireObj.name = _api2wire_String(apiObj.name);
    wireObj.fields = _api2wire_list_schema_field(apiObj.fields);
  }

  void _api_fill_to_wire_schema_field(
      SchemaField apiObj, wire_SchemaField wireObj) {
    wireObj.name = _api2wire_String(apiObj.name);
    wireObj.field_type = _api2wire_String(apiObj.fieldType);
    wireObj.index_record_option = _api2wire_String(apiObj.indexRecordOption);
    wireObj.tokenizer_name = _api2wire_String(apiObj.tokenizerName);
    wireObj.is_stored = _api2wire_bool(apiObj.isStored);
  }

  void _api_fill_to_wire_search_query(
      SearchQuery apiObj, wire_SearchQuery wireObj) {
    wireObj.index_name = _api2wire_String(apiObj.indexName);
    wireObj.search = _api2wire_String(apiObj.search);
    wireObj.fields = _api2wire_StringList(apiObj.fields);
  }
}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

double _wire2api_f32(dynamic raw) {
  return raw as double;
}

List<SearchResult> _wire2api_list_search_result(dynamic raw) {
  return (raw as List<dynamic>).map(_wire2api_search_result).toList();
}

SearchResult _wire2api_search_result(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2)
    throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return SearchResult(
    score: _wire2api_f32(arr[0]),
    docResult: _wire2api_String(arr[1]),
  );
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class TantivyDartBindingsWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  TantivyDartBindingsWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  TantivyDartBindingsWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_binding_test(
    int port,
    ffi.Pointer<wire_uint_8_list> string,
  ) {
    return _wire_binding_test(
      port,
      string,
    );
  }

  late final _wire_binding_testPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_binding_test');
  late final _wire_binding_test = _wire_binding_testPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_set_up(
    int port,
  ) {
    return _wire_set_up(
      port,
    );
  }

  late final _wire_set_upPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_set_up');
  late final _wire_set_up = _wire_set_upPtr.asFunction<void Function(int)>();

  void wire_close_search_engine(
    int port,
    ffi.Pointer<wire_uint_8_list> name,
  ) {
    return _wire_close_search_engine(
      port,
      name,
    );
  }

  late final _wire_close_search_enginePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_close_search_engine');
  late final _wire_close_search_engine = _wire_close_search_enginePtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_open_or_create_index(
    int port,
    ffi.Pointer<wire_Schema> schema,
  ) {
    return _wire_open_or_create_index(
      port,
      schema,
    );
  }

  late final _wire_open_or_create_indexPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_Schema>)>>('wire_open_or_create_index');
  late final _wire_open_or_create_index = _wire_open_or_create_indexPtr
      .asFunction<void Function(int, ffi.Pointer<wire_Schema>)>();

  void wire_index_documents(
    int port,
    ffi.Pointer<wire_list_document> documents,
  ) {
    return _wire_index_documents(
      port,
      documents,
    );
  }

  late final _wire_index_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_list_document>)>>('wire_index_documents');
  late final _wire_index_documents = _wire_index_documentsPtr
      .asFunction<void Function(int, ffi.Pointer<wire_list_document>)>();

  void wire_search(
    int port,
    ffi.Pointer<wire_SearchQuery> query,
  ) {
    return _wire_search(
      port,
      query,
    );
  }

  late final _wire_searchPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_SearchQuery>)>>('wire_search');
  late final _wire_search = _wire_searchPtr
      .asFunction<void Function(int, ffi.Pointer<wire_SearchQuery>)>();

  ffi.Pointer<wire_StringList> new_StringList(
    int len,
  ) {
    return _new_StringList(
      len,
    );
  }

  late final _new_StringListPtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>(
      'new_StringList');
  late final _new_StringList = _new_StringListPtr
      .asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<ffi.Double> new_box_autoadd_f64(
    double value,
  ) {
    return _new_box_autoadd_f64(
      value,
    );
  }

  late final _new_box_autoadd_f64Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Double> Function(ffi.Double)>>(
          'new_box_autoadd_f64');
  late final _new_box_autoadd_f64 = _new_box_autoadd_f64Ptr
      .asFunction<ffi.Pointer<ffi.Double> Function(double)>();

  ffi.Pointer<ffi.Int64> new_box_autoadd_i64(
    int value,
  ) {
    return _new_box_autoadd_i64(
      value,
    );
  }

  late final _new_box_autoadd_i64Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int64> Function(ffi.Int64)>>(
          'new_box_autoadd_i64');
  late final _new_box_autoadd_i64 = _new_box_autoadd_i64Ptr
      .asFunction<ffi.Pointer<ffi.Int64> Function(int)>();

  ffi.Pointer<wire_Schema> new_box_autoadd_schema() {
    return _new_box_autoadd_schema();
  }

  late final _new_box_autoadd_schemaPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Schema> Function()>>(
          'new_box_autoadd_schema');
  late final _new_box_autoadd_schema = _new_box_autoadd_schemaPtr
      .asFunction<ffi.Pointer<wire_Schema> Function()>();

  ffi.Pointer<wire_SearchQuery> new_box_autoadd_search_query() {
    return _new_box_autoadd_search_query();
  }

  late final _new_box_autoadd_search_queryPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_SearchQuery> Function()>>(
          'new_box_autoadd_search_query');
  late final _new_box_autoadd_search_query = _new_box_autoadd_search_queryPtr
      .asFunction<ffi.Pointer<wire_SearchQuery> Function()>();

  ffi.Pointer<wire_list_document> new_list_document(
    int len,
  ) {
    return _new_list_document(
      len,
    );
  }

  late final _new_list_documentPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_document> Function(
              ffi.Int32)>>('new_list_document');
  late final _new_list_document = _new_list_documentPtr
      .asFunction<ffi.Pointer<wire_list_document> Function(int)>();

  ffi.Pointer<wire_list_document_fields> new_list_document_fields(
    int len,
  ) {
    return _new_list_document_fields(
      len,
    );
  }

  late final _new_list_document_fieldsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_document_fields> Function(
              ffi.Int32)>>('new_list_document_fields');
  late final _new_list_document_fields = _new_list_document_fieldsPtr
      .asFunction<ffi.Pointer<wire_list_document_fields> Function(int)>();

  ffi.Pointer<wire_list_schema_field> new_list_schema_field(
    int len,
  ) {
    return _new_list_schema_field(
      len,
    );
  }

  late final _new_list_schema_fieldPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_schema_field> Function(
              ffi.Int32)>>('new_list_schema_field');
  late final _new_list_schema_field = _new_list_schema_fieldPtr
      .asFunction<ffi.Pointer<wire_list_schema_field> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_SchemaField extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_uint_8_list> field_type;

  external ffi.Pointer<wire_uint_8_list> index_record_option;

  external ffi.Pointer<wire_uint_8_list> tokenizer_name;

  @ffi.Uint8()
  external int is_stored;
}

class wire_list_schema_field extends ffi.Struct {
  external ffi.Pointer<wire_SchemaField> ptr;

  @ffi.Int32()
  external int len;
}

class wire_Schema extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> path;

  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_list_schema_field> fields;
}

class wire_DocumentFields extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_uint_8_list> field_type;

  external ffi.Pointer<wire_uint_8_list> bytes;

  external ffi.Pointer<wire_uint_8_list> text;

  external ffi.Pointer<ffi.Int64> i64;

  external ffi.Pointer<ffi.Double> f64;
}

class wire_list_document_fields extends ffi.Struct {
  external ffi.Pointer<wire_DocumentFields> ptr;

  @ffi.Int32()
  external int len;
}

class wire_Document extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> index_name;

  external ffi.Pointer<wire_list_document_fields> document_fields;
}

class wire_list_document extends ffi.Struct {
  external ffi.Pointer<wire_Document> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_SearchQuery extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> index_name;

  external ffi.Pointer<wire_uint_8_list> search;

  external ffi.Pointer<wire_StringList> fields;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
