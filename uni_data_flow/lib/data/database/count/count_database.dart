import 'package:drift/drift.dart';
import 'count_entity.dart';

part 'count_database.g.dart';

@DriftDatabase(tables: [CountEntity])
class CountDatabase extends _$CountDatabase {
  CountDatabase(queryExecutor): super(queryExecutor);

  @override
  int get schemaVersion => 1;
}