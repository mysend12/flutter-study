import 'package:drift/drift.dart';
import 'package:drift/web.dart';

import 'database_open_connector.dart';

class DatabaseOpenConnectorImpl extends DatabaseOpenConnector {
  @override
  QueryExecutor openConnection() {
    return WebDatabase("uni_data_flow#1");
  }
}
