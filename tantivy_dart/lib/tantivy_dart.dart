library tantivy_dart;

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "generated_bindings.dart" as tantivy;

part "tantivy_dart.freezed.dart";
part "schema.dart";
part "index.dart";

/// Singleton access point for the library should be initiated to load de
/// dynamic library with the tantivy implementation.
class Tantivy {
  factory Tantivy() => _instance;
  const Tantivy._();
  static const _instance = Tantivy._();

  // Getter for the bindings with rust
  tantivy.TantivyDartBindings get bindings => _bindings != null
      ? _bindings!
      : throw ErrorDescription("Binding not initialized");

  @protected
  static tantivy.TantivyDartBindings? _bindings;

  // Method to initialize the bindings. this MUST be called.
  Future<void> init() async {
    if (_bindings != null) return;

    final dylib = DynamicLibrary.open("./lib/libtantivy_dart.so");
    _bindings = tantivy.TantivyDartBindings(dylib);

    await bindings.setUp();
  }
}


