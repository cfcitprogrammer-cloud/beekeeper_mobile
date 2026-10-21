// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20261020061042_up = [
  InsertTable('Hat'),
  InsertColumn('color', Column.varchar, onTable: 'Hat'),
  InsertColumn('width', Column.integer, onTable: 'Hat')
];

const List<MigrationCommand> _migration_20261020061042_down = [
  DropTable('Hat'),
  DropColumn('color', onTable: 'Hat'),
  DropColumn('width', onTable: 'Hat')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20261020061042',
  up: _migration_20261020061042_up,
  down: _migration_20261020061042_down,
)
class Migration20261020061042 extends Migration {
  const Migration20261020061042()
    : super(
        version: 20261020061042,
        up: _migration_20261020061042_up,
        down: _migration_20261020061042_down,
      );
}
