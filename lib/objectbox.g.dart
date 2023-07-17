// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/grpusuario.dart';
import 'models/person.dart';
import 'models/usuario.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6539493397106679310),
      name: 'GrpUsuario',
      lastPropertyId: const IdUid(3, 514327547723749507),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3114137065915283478),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6320294929629162734),
            name: 'tpGrupo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 514327547723749507),
            name: 'nome',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 3020900866383257170),
      name: 'Person',
      lastPropertyId: const IdUid(4, 3660948870475732902),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 527209389629512888),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3824763923837689200),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2213379536676081803),
            name: 'tpPessoa',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3660948870475732902),
            name: 'cpfcnpj',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 6324113931297736576),
      name: 'Usuario',
      lastPropertyId: const IdUid(4, 8427933821961903301),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7870438878748977839),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6281032460466779158),
            name: 'tpGrupo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 503068022364472247),
            name: 'nome',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8427933821961903301),
            name: 'senha',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 6324113931297736576),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    GrpUsuario: EntityDefinition<GrpUsuario>(
        model: _entities[0],
        toOneRelations: (GrpUsuario object) => [],
        toManyRelations: (GrpUsuario object) => {},
        getId: (GrpUsuario object) => object.id,
        setId: (GrpUsuario object, int id) {
          object.id = id;
        },
        objectToFB: (GrpUsuario object, fb.Builder fbb) {
          final tpGrupoOffset = fbb.writeString(object.tpGrupo);
          final nomeOffset = fbb.writeString(object.nome);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, tpGrupoOffset);
          fbb.addOffset(2, nomeOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = GrpUsuario(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              tpGrupo: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              nome: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''));

          return object;
        }),
    Person: EntityDefinition<Person>(
        model: _entities[1],
        toOneRelations: (Person object) => [],
        toManyRelations: (Person object) => {},
        getId: (Person object) => object.id,
        setId: (Person object, int id) {
          object.id = id;
        },
        objectToFB: (Person object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final tpPessoaOffset = fbb.writeString(object.tpPessoa);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, tpPessoaOffset);
          fbb.addInt64(3, object.cpfcnpj);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Person(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              tpPessoa: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              cpfcnpj:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));

          return object;
        }),
    Usuario: EntityDefinition<Usuario>(
        model: _entities[2],
        toOneRelations: (Usuario object) => [],
        toManyRelations: (Usuario object) => {},
        getId: (Usuario object) => object.id,
        setId: (Usuario object, int id) {
          object.id = id;
        },
        objectToFB: (Usuario object, fb.Builder fbb) {
          final tpGrupoOffset = fbb.writeString(object.tpGrupo);
          final nomeOffset = fbb.writeString(object.nome);
          final senhaOffset = fbb.writeString(object.senha);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, tpGrupoOffset);
          fbb.addOffset(2, nomeOffset);
          fbb.addOffset(3, senhaOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Usuario(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              tpGrupo: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              nome: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              senha: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [GrpUsuario] entity fields to define ObjectBox queries.
class GrpUsuario_ {
  /// see [GrpUsuario.id]
  static final id =
      QueryIntegerProperty<GrpUsuario>(_entities[0].properties[0]);

  /// see [GrpUsuario.tpGrupo]
  static final tpGrupo =
      QueryStringProperty<GrpUsuario>(_entities[0].properties[1]);

  /// see [GrpUsuario.nome]
  static final nome =
      QueryStringProperty<GrpUsuario>(_entities[0].properties[2]);
}

/// [Person] entity fields to define ObjectBox queries.
class Person_ {
  /// see [Person.id]
  static final id = QueryIntegerProperty<Person>(_entities[1].properties[0]);

  /// see [Person.name]
  static final name = QueryStringProperty<Person>(_entities[1].properties[1]);

  /// see [Person.tpPessoa]
  static final tpPessoa =
      QueryStringProperty<Person>(_entities[1].properties[2]);

  /// see [Person.cpfcnpj]
  static final cpfcnpj =
      QueryIntegerProperty<Person>(_entities[1].properties[3]);
}

/// [Usuario] entity fields to define ObjectBox queries.
class Usuario_ {
  /// see [Usuario.id]
  static final id = QueryIntegerProperty<Usuario>(_entities[2].properties[0]);

  /// see [Usuario.tpGrupo]
  static final tpGrupo =
      QueryStringProperty<Usuario>(_entities[2].properties[1]);

  /// see [Usuario.nome]
  static final nome = QueryStringProperty<Usuario>(_entities[2].properties[2]);

  /// see [Usuario.senha]
  static final senha = QueryStringProperty<Usuario>(_entities[2].properties[3]);
}