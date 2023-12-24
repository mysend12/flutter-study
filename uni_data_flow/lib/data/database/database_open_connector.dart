import 'package:drift/backends.dart';

abstract class DatabaseOpenConnector {
  QueryExecutor openConnection();
}