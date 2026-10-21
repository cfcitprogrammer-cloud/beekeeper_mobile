// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Hat> _$HatFromRest(
  Map<String, dynamic> data, {
  required RestProvider provider,
  OfflineFirstWithRestRepository? repository,
}) async {
  return Hat(color: data['color'] as String, width: data['width'] as int);
}

Future<Map<String, dynamic>> _$HatToRest(
  Hat instance, {
  required RestProvider provider,
  OfflineFirstWithRestRepository? repository,
}) async {
  return {'color': instance.color, 'width': instance.width};
}

Future<Hat> _$HatFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithRestRepository? repository,
}) async {
  return Hat(color: data['color'] as String, width: data['width'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$HatToSqlite(
  Hat instance, {
  required SqliteProvider provider,
  OfflineFirstWithRestRepository? repository,
}) async {
  return {'color': instance.color, 'width': instance.width};
}

/// Construct a [Hat]
class HatAdapter extends OfflineFirstWithRestAdapter<Hat> {
  HatAdapter();

  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'color': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'color',
      iterable: false,
      type: String,
    ),
    'width': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'width',
      iterable: false,
      type: int,
    ),
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    Hat instance,
    DatabaseExecutor executor,
  ) async => instance.primaryKey;
  @override
  final String tableName = 'Hat';

  @override
  Future<Hat> fromRest(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithRestRepository? repository,
  }) async =>
      await _$HatFromRest(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toRest(
    Hat input, {
    required provider,
    covariant OfflineFirstWithRestRepository? repository,
  }) async =>
      await _$HatToRest(input, provider: provider, repository: repository);
  @override
  Future<Hat> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithRestRepository? repository,
  }) async =>
      await _$HatFromSqlite(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(
    Hat input, {
    required provider,
    covariant OfflineFirstWithRestRepository? repository,
  }) async =>
      await _$HatToSqlite(input, provider: provider, repository: repository);
}
