// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'core/database/objectbox/news_model.dart';
import 'core/database/objectbox/user_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 2641012137304608828),
      name: 'Usermodel',
      lastPropertyId: const obx_int.IdUid(5, 4451576216460976734),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 6488779725705992727),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 1567574555712740408),
            name: 'email',
            type: 9,
            flags: 2080,
            indexId: const obx_int.IdUid(1, 5167768744912703604)),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 6223427772562161235),
            name: 'name',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 5871422021338659982),
            name: 'password',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 4451576216460976734),
            name: 'photoUrl',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(2, 494233302308656156),
      name: 'Newsmodel',
      lastPropertyId: const obx_int.IdUid(6, 6673640104800108719),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 4746393052665655),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 7077676732021851351),
            name: 'title',
            type: 9,
            flags: 2080,
            indexId: const obx_int.IdUid(2, 4016847812534464949)),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 5050106240485015470),
            name: 'content',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 9191428364129417161),
            name: 'category',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 5357732709570492260),
            name: 'imageUrl',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 6673640104800108719),
            name: 'date',
            type: 10,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(2, 494233302308656156),
      lastIndexId: const obx_int.IdUid(2, 4016847812534464949),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    Usermodel: obx_int.EntityDefinition<Usermodel>(
        model: _entities[0],
        toOneRelations: (Usermodel object) => [],
        toManyRelations: (Usermodel object) => {},
        getId: (Usermodel object) => object.id,
        setId: (Usermodel object, int id) {
          object.id = id;
        },
        objectToFB: (Usermodel object, fb.Builder fbb) {
          final emailOffset =
              object.email == null ? null : fbb.writeString(object.email!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final passwordOffset = object.password == null
              ? null
              : fbb.writeString(object.password!);
          final photoUrlOffset = object.photoUrl == null
              ? null
              : fbb.writeString(object.photoUrl!);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, emailOffset);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(3, passwordOffset);
          fbb.addOffset(4, photoUrlOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final emailParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final passwordParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 10);
          final photoUrlParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 12);
          final object = Usermodel(
              id: idParam,
              email: emailParam,
              name: nameParam,
              password: passwordParam,
              photoUrl: photoUrlParam);

          return object;
        }),
    Newsmodel: obx_int.EntityDefinition<Newsmodel>(
        model: _entities[1],
        toOneRelations: (Newsmodel object) => [],
        toManyRelations: (Newsmodel object) => {},
        getId: (Newsmodel object) => object.id,
        setId: (Newsmodel object, int id) {
          object.id = id;
        },
        objectToFB: (Newsmodel object, fb.Builder fbb) {
          final titleOffset =
              object.title == null ? null : fbb.writeString(object.title!);
          final contentOffset =
              object.content == null ? null : fbb.writeString(object.content!);
          final categoryOffset = object.category == null
              ? null
              : fbb.writeString(object.category!);
          final imageUrlOffset = object.imageUrl == null
              ? null
              : fbb.writeString(object.imageUrl!);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, contentOffset);
          fbb.addOffset(3, categoryOffset);
          fbb.addOffset(4, imageUrlOffset);
          fbb.addInt64(5, object.date?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final dateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 14);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final categoryParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 10);
          final contentParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final dateParam = dateValue == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(dateValue);
          final imageUrlParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 12);
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 6);
          final object = Newsmodel(
              id: idParam,
              category: categoryParam,
              content: contentParam,
              date: dateParam,
              imageUrl: imageUrlParam,
              title: titleParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [Usermodel] entity fields to define ObjectBox queries.
class Usermodel_ {
  /// See [Usermodel.id].
  static final id =
      obx.QueryIntegerProperty<Usermodel>(_entities[0].properties[0]);

  /// See [Usermodel.email].
  static final email =
      obx.QueryStringProperty<Usermodel>(_entities[0].properties[1]);

  /// See [Usermodel.name].
  static final name =
      obx.QueryStringProperty<Usermodel>(_entities[0].properties[2]);

  /// See [Usermodel.password].
  static final password =
      obx.QueryStringProperty<Usermodel>(_entities[0].properties[3]);

  /// See [Usermodel.photoUrl].
  static final photoUrl =
      obx.QueryStringProperty<Usermodel>(_entities[0].properties[4]);
}

/// [Newsmodel] entity fields to define ObjectBox queries.
class Newsmodel_ {
  /// See [Newsmodel.id].
  static final id =
      obx.QueryIntegerProperty<Newsmodel>(_entities[1].properties[0]);

  /// See [Newsmodel.title].
  static final title =
      obx.QueryStringProperty<Newsmodel>(_entities[1].properties[1]);

  /// See [Newsmodel.content].
  static final content =
      obx.QueryStringProperty<Newsmodel>(_entities[1].properties[2]);

  /// See [Newsmodel.category].
  static final category =
      obx.QueryStringProperty<Newsmodel>(_entities[1].properties[3]);

  /// See [Newsmodel.imageUrl].
  static final imageUrl =
      obx.QueryStringProperty<Newsmodel>(_entities[1].properties[4]);

  /// See [Newsmodel.date].
  static final date =
      obx.QueryDateProperty<Newsmodel>(_entities[1].properties[5]);
}