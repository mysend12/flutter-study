import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'database_open_connector.dart';

class DatabaseOpenConnectorImpl extends DatabaseOpenConnector {
  @override
  QueryExecutor openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'uni_data_flow#1.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }
}
