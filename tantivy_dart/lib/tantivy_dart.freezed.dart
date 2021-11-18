// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of tantivy_dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultsTearOff {
  const _$ResultsTearOff();

  _Results call(double score, String docJson) {
    return _Results(
      score,
      docJson,
    );
  }
}

/// @nodoc
const $Results = _$ResultsTearOff();

/// @nodoc
mixin _$Results {
  double get score => throw _privateConstructorUsedError;
  String get docJson => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
  $Res call({double score, String docJson});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res> implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  final Results _value;
  // ignore: unused_field
  final $Res Function(Results) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? docJson = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      docJson: docJson == freezed
          ? _value.docJson
          : docJson // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) then) =
      __$ResultsCopyWithImpl<$Res>;
  @override
  $Res call({double score, String docJson});
}

/// @nodoc
class __$ResultsCopyWithImpl<$Res> extends _$ResultsCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(_Results _value, $Res Function(_Results) _then)
      : super(_value, (v) => _then(v as _Results));

  @override
  _Results get _value => super._value as _Results;

  @override
  $Res call({
    Object? score = freezed,
    Object? docJson = freezed,
  }) {
    return _then(_Results(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      docJson == freezed
          ? _value.docJson
          : docJson // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Results implements _Results {
  _$_Results(this.score, this.docJson);

  @override
  final double score;
  @override
  final String docJson;

  @override
  String toString() {
    return 'Results(score: $score, docJson: $docJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Results &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.docJson, docJson) || other.docJson == docJson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score, docJson);

  @JsonKey(ignore: true)
  @override
  _$ResultsCopyWith<_Results> get copyWith =>
      __$ResultsCopyWithImpl<_Results>(this, _$identity);
}

abstract class _Results implements Results {
  factory _Results(double score, String docJson) = _$_Results;

  @override
  double get score;
  @override
  String get docJson;
  @override
  @JsonKey(ignore: true)
  _$ResultsCopyWith<_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SchemaFieldTearOff {
  const _$SchemaFieldTearOff();

  SchemaFieldText text(
      {required String name,
      bool isStored = false,
      String? tokenizerName,
      IndexRecordOption indexOption = IndexRecordOption.none}) {
    return SchemaFieldText(
      name: name,
      isStored: isStored,
      tokenizerName: tokenizerName,
      indexOption: indexOption,
    );
  }

  SchemaFieldF64 f64({required String name, bool isStored = false}) {
    return SchemaFieldF64(
      name: name,
      isStored: isStored,
    );
  }

  SchemaFieldI64 i64({required String name, bool isStored = false}) {
    return SchemaFieldI64(
      name: name,
      isStored: isStored,
    );
  }

  SchemaFieldFacet facet({required String name, bool isStored = false}) {
    return SchemaFieldFacet(
      name: name,
      isStored: isStored,
    );
  }

  SchemaFieldBytes bytes({required String name, bool isStored = false}) {
    return SchemaFieldBytes(
      name: name,
      isStored: isStored,
    );
  }
}

/// @nodoc
const $SchemaField = _$SchemaFieldTearOff();

/// @nodoc
mixin _$SchemaField {
  String get name => throw _privateConstructorUsedError;
  bool get isStored => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemaFieldCopyWith<SchemaField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldCopyWith(
          SchemaField value, $Res Function(SchemaField) then) =
      _$SchemaFieldCopyWithImpl<$Res>;
  $Res call({String name, bool isStored});
}

/// @nodoc
class _$SchemaFieldCopyWithImpl<$Res> implements $SchemaFieldCopyWith<$Res> {
  _$SchemaFieldCopyWithImpl(this._value, this._then);

  final SchemaField _value;
  // ignore: unused_field
  final $Res Function(SchemaField) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $SchemaFieldTextCopyWith<$Res>
    implements $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldTextCopyWith(
          SchemaFieldText value, $Res Function(SchemaFieldText) then) =
      _$SchemaFieldTextCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      bool isStored,
      String? tokenizerName,
      IndexRecordOption indexOption});
}

/// @nodoc
class _$SchemaFieldTextCopyWithImpl<$Res>
    extends _$SchemaFieldCopyWithImpl<$Res>
    implements $SchemaFieldTextCopyWith<$Res> {
  _$SchemaFieldTextCopyWithImpl(
      SchemaFieldText _value, $Res Function(SchemaFieldText) _then)
      : super(_value, (v) => _then(v as SchemaFieldText));

  @override
  SchemaFieldText get _value => super._value as SchemaFieldText;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
    Object? tokenizerName = freezed,
    Object? indexOption = freezed,
  }) {
    return _then(SchemaFieldText(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
      tokenizerName: tokenizerName == freezed
          ? _value.tokenizerName
          : tokenizerName // ignore: cast_nullable_to_non_nullable
              as String?,
      indexOption: indexOption == freezed
          ? _value.indexOption
          : indexOption // ignore: cast_nullable_to_non_nullable
              as IndexRecordOption,
    ));
  }
}

/// @nodoc

class _$SchemaFieldText extends SchemaFieldText {
  const _$SchemaFieldText(
      {required this.name,
      this.isStored = false,
      this.tokenizerName,
      this.indexOption = IndexRecordOption.none})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isStored;
  @override
  final String? tokenizerName;
  @JsonKey(defaultValue: IndexRecordOption.none)
  @override
  final IndexRecordOption indexOption;

  @override
  String toString() {
    return 'SchemaField.text(name: $name, isStored: $isStored, tokenizerName: $tokenizerName, indexOption: $indexOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaFieldText &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isStored, isStored) ||
                other.isStored == isStored) &&
            (identical(other.tokenizerName, tokenizerName) ||
                other.tokenizerName == tokenizerName) &&
            (identical(other.indexOption, indexOption) ||
                other.indexOption == indexOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, isStored, tokenizerName, indexOption);

  @JsonKey(ignore: true)
  @override
  $SchemaFieldTextCopyWith<SchemaFieldText> get copyWith =>
      _$SchemaFieldTextCopyWithImpl<SchemaFieldText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) {
    return text(name, isStored, tokenizerName, indexOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) {
    return text?.call(name, isStored, tokenizerName, indexOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(name, isStored, tokenizerName, indexOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class SchemaFieldText extends SchemaField {
  const factory SchemaFieldText(
      {required String name,
      bool isStored,
      String? tokenizerName,
      IndexRecordOption indexOption}) = _$SchemaFieldText;
  const SchemaFieldText._() : super._();

  @override
  String get name;
  @override
  bool get isStored;
  String? get tokenizerName;
  IndexRecordOption get indexOption;
  @override
  @JsonKey(ignore: true)
  $SchemaFieldTextCopyWith<SchemaFieldText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaFieldF64CopyWith<$Res>
    implements $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldF64CopyWith(
          SchemaFieldF64 value, $Res Function(SchemaFieldF64) then) =
      _$SchemaFieldF64CopyWithImpl<$Res>;
  @override
  $Res call({String name, bool isStored});
}

/// @nodoc
class _$SchemaFieldF64CopyWithImpl<$Res> extends _$SchemaFieldCopyWithImpl<$Res>
    implements $SchemaFieldF64CopyWith<$Res> {
  _$SchemaFieldF64CopyWithImpl(
      SchemaFieldF64 _value, $Res Function(SchemaFieldF64) _then)
      : super(_value, (v) => _then(v as SchemaFieldF64));

  @override
  SchemaFieldF64 get _value => super._value as SchemaFieldF64;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
  }) {
    return _then(SchemaFieldF64(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SchemaFieldF64 extends SchemaFieldF64 {
  const _$SchemaFieldF64({required this.name, this.isStored = false})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isStored;

  @override
  String toString() {
    return 'SchemaField.f64(name: $name, isStored: $isStored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaFieldF64 &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isStored, isStored) ||
                other.isStored == isStored));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isStored);

  @JsonKey(ignore: true)
  @override
  $SchemaFieldF64CopyWith<SchemaFieldF64> get copyWith =>
      _$SchemaFieldF64CopyWithImpl<SchemaFieldF64>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) {
    return f64(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) {
    return f64?.call(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) {
    if (f64 != null) {
      return f64(name, isStored);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) {
    return f64(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) {
    return f64?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (f64 != null) {
      return f64(this);
    }
    return orElse();
  }
}

abstract class SchemaFieldF64 extends SchemaField {
  const factory SchemaFieldF64({required String name, bool isStored}) =
      _$SchemaFieldF64;
  const SchemaFieldF64._() : super._();

  @override
  String get name;
  @override
  bool get isStored;
  @override
  @JsonKey(ignore: true)
  $SchemaFieldF64CopyWith<SchemaFieldF64> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaFieldI64CopyWith<$Res>
    implements $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldI64CopyWith(
          SchemaFieldI64 value, $Res Function(SchemaFieldI64) then) =
      _$SchemaFieldI64CopyWithImpl<$Res>;
  @override
  $Res call({String name, bool isStored});
}

/// @nodoc
class _$SchemaFieldI64CopyWithImpl<$Res> extends _$SchemaFieldCopyWithImpl<$Res>
    implements $SchemaFieldI64CopyWith<$Res> {
  _$SchemaFieldI64CopyWithImpl(
      SchemaFieldI64 _value, $Res Function(SchemaFieldI64) _then)
      : super(_value, (v) => _then(v as SchemaFieldI64));

  @override
  SchemaFieldI64 get _value => super._value as SchemaFieldI64;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
  }) {
    return _then(SchemaFieldI64(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SchemaFieldI64 extends SchemaFieldI64 {
  const _$SchemaFieldI64({required this.name, this.isStored = false})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isStored;

  @override
  String toString() {
    return 'SchemaField.i64(name: $name, isStored: $isStored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaFieldI64 &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isStored, isStored) ||
                other.isStored == isStored));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isStored);

  @JsonKey(ignore: true)
  @override
  $SchemaFieldI64CopyWith<SchemaFieldI64> get copyWith =>
      _$SchemaFieldI64CopyWithImpl<SchemaFieldI64>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) {
    return i64(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) {
    return i64?.call(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) {
    if (i64 != null) {
      return i64(name, isStored);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) {
    return i64(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) {
    return i64?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (i64 != null) {
      return i64(this);
    }
    return orElse();
  }
}

abstract class SchemaFieldI64 extends SchemaField {
  const factory SchemaFieldI64({required String name, bool isStored}) =
      _$SchemaFieldI64;
  const SchemaFieldI64._() : super._();

  @override
  String get name;
  @override
  bool get isStored;
  @override
  @JsonKey(ignore: true)
  $SchemaFieldI64CopyWith<SchemaFieldI64> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaFieldFacetCopyWith<$Res>
    implements $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldFacetCopyWith(
          SchemaFieldFacet value, $Res Function(SchemaFieldFacet) then) =
      _$SchemaFieldFacetCopyWithImpl<$Res>;
  @override
  $Res call({String name, bool isStored});
}

/// @nodoc
class _$SchemaFieldFacetCopyWithImpl<$Res>
    extends _$SchemaFieldCopyWithImpl<$Res>
    implements $SchemaFieldFacetCopyWith<$Res> {
  _$SchemaFieldFacetCopyWithImpl(
      SchemaFieldFacet _value, $Res Function(SchemaFieldFacet) _then)
      : super(_value, (v) => _then(v as SchemaFieldFacet));

  @override
  SchemaFieldFacet get _value => super._value as SchemaFieldFacet;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
  }) {
    return _then(SchemaFieldFacet(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SchemaFieldFacet extends SchemaFieldFacet {
  const _$SchemaFieldFacet({required this.name, this.isStored = false})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isStored;

  @override
  String toString() {
    return 'SchemaField.facet(name: $name, isStored: $isStored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaFieldFacet &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isStored, isStored) ||
                other.isStored == isStored));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isStored);

  @JsonKey(ignore: true)
  @override
  $SchemaFieldFacetCopyWith<SchemaFieldFacet> get copyWith =>
      _$SchemaFieldFacetCopyWithImpl<SchemaFieldFacet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) {
    return facet(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) {
    return facet?.call(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) {
    if (facet != null) {
      return facet(name, isStored);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) {
    return facet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) {
    return facet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (facet != null) {
      return facet(this);
    }
    return orElse();
  }
}

abstract class SchemaFieldFacet extends SchemaField {
  const factory SchemaFieldFacet({required String name, bool isStored}) =
      _$SchemaFieldFacet;
  const SchemaFieldFacet._() : super._();

  @override
  String get name;
  @override
  bool get isStored;
  @override
  @JsonKey(ignore: true)
  $SchemaFieldFacetCopyWith<SchemaFieldFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaFieldBytesCopyWith<$Res>
    implements $SchemaFieldCopyWith<$Res> {
  factory $SchemaFieldBytesCopyWith(
          SchemaFieldBytes value, $Res Function(SchemaFieldBytes) then) =
      _$SchemaFieldBytesCopyWithImpl<$Res>;
  @override
  $Res call({String name, bool isStored});
}

/// @nodoc
class _$SchemaFieldBytesCopyWithImpl<$Res>
    extends _$SchemaFieldCopyWithImpl<$Res>
    implements $SchemaFieldBytesCopyWith<$Res> {
  _$SchemaFieldBytesCopyWithImpl(
      SchemaFieldBytes _value, $Res Function(SchemaFieldBytes) _then)
      : super(_value, (v) => _then(v as SchemaFieldBytes));

  @override
  SchemaFieldBytes get _value => super._value as SchemaFieldBytes;

  @override
  $Res call({
    Object? name = freezed,
    Object? isStored = freezed,
  }) {
    return _then(SchemaFieldBytes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isStored: isStored == freezed
          ? _value.isStored
          : isStored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SchemaFieldBytes extends SchemaFieldBytes {
  const _$SchemaFieldBytes({required this.name, this.isStored = false})
      : super._();

  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isStored;

  @override
  String toString() {
    return 'SchemaField.bytes(name: $name, isStored: $isStored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchemaFieldBytes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isStored, isStored) ||
                other.isStored == isStored));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isStored);

  @JsonKey(ignore: true)
  @override
  $SchemaFieldBytesCopyWith<SchemaFieldBytes> get copyWith =>
      _$SchemaFieldBytesCopyWithImpl<SchemaFieldBytes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)
        text,
    required TResult Function(String name, bool isStored) f64,
    required TResult Function(String name, bool isStored) i64,
    required TResult Function(String name, bool isStored) facet,
    required TResult Function(String name, bool isStored) bytes,
  }) {
    return bytes(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
  }) {
    return bytes?.call(name, isStored);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isStored, String? tokenizerName,
            IndexRecordOption indexOption)?
        text,
    TResult Function(String name, bool isStored)? f64,
    TResult Function(String name, bool isStored)? i64,
    TResult Function(String name, bool isStored)? facet,
    TResult Function(String name, bool isStored)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(name, isStored);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SchemaFieldText value) text,
    required TResult Function(SchemaFieldF64 value) f64,
    required TResult Function(SchemaFieldI64 value) i64,
    required TResult Function(SchemaFieldFacet value) facet,
    required TResult Function(SchemaFieldBytes value) bytes,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SchemaFieldText value)? text,
    TResult Function(SchemaFieldF64 value)? f64,
    TResult Function(SchemaFieldI64 value)? i64,
    TResult Function(SchemaFieldFacet value)? facet,
    TResult Function(SchemaFieldBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class SchemaFieldBytes extends SchemaField {
  const factory SchemaFieldBytes({required String name, bool isStored}) =
      _$SchemaFieldBytes;
  const SchemaFieldBytes._() : super._();

  @override
  String get name;
  @override
  bool get isStored;
  @override
  @JsonKey(ignore: true)
  $SchemaFieldBytesCopyWith<SchemaFieldBytes> get copyWith =>
      throw _privateConstructorUsedError;
}
