// lib/brick/repository.dart
import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_rest/brick_rest.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:beekeeper_mobile/brick/brick.g.dart';
import 'package:sqflite/sqflite.dart' show databaseFactory;
import 'package:beekeeper_mobile/brick/db/schema.g.dart';
export 'package:brick_core/query.dart'
    show And, Or, Query, QueryAction, Where, WherePhrase;

class Repository extends OfflineFirstWithRestRepository {
  Repository()
    : super(
        migrations: migrations,
        restProvider: RestProvider(
          'http://0.0.0.0:3000',
          modelDictionary: restModelDictionary,
        ),
        sqliteProvider: SqliteProvider(
          "BEEKEEPER_DB",
          databaseFactory: databaseFactory,
          modelDictionary: sqliteModelDictionary,
        ),
        offlineQueueManager: RestRequestSqliteCacheManager(
          'brick_offline_queue.sqlite',
          databaseFactory: databaseFactory,
        ),
      );
}
