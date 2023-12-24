import 'package:drift/drift.dart';

class CountEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get number => integer()();
}