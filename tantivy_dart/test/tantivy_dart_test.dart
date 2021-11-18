import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tantivy_dart/generated_bindings.dart' as tantivy;
import 'package:tantivy_dart/tantivy_dart.dart';

void main() {
  group(
    "Tantivy Bindings",
    () {
      setUp(() async {
        await Tantivy().init();
      });

      test(
        "Bindings Work",
        () async {
          final response = await Tantivy().bindings.bindingTest(string: "ping");
          expect(
            response,
            equals('pong'),
          );
        },
      );
    },
  );
  group(
    "Tantivy Index",
    () {
      setUp(() async {
        await Tantivy().init();
      });

      final index = Index.withSchemaBuilder(
        name: "test_index",
        directory: Directory('/home/jj/Escritorio/tantivity/index1'),
        schema: (builder) {
          builder.addTextField(name: 'name');
          return builder;
        },
      );

      test(
        "Can create Indexes",
        () async {
          await index.buildOrOpen();
        },
      );

      test(
        'Can add Documents',
        () async {
          await index.saveDocuments(
            [
              BookDocument('FYCKdsad dsa dsa '),
              BookDocument('la tuadsa ds '),
            ],
          );
        },
      );

      test(
        'Can search Documents',
        () async {
          final r =  await index.search(
            "la tuadsa",
            ["name"],
          );

          print(r);
        },
      );
    },
  );
}

class BookDocument extends Document {
  BookDocument(this.name);

  final String name;

  @override
  tantivy.Document toDocument({required String indexName}) {
    return tantivy.Document(
      indexName: indexName,
      documentFields: [
        tantivy.DocumentFields(
          name: 'name',
          fieldType: 'text',
          text: name,
        )
      ],
    );
  }
}
