import '../../../../common/exception/missing_data_exception.dart';
import '../count_database.dart';

class CountRepository {
  CountRepository(this._database);

  final CountDatabase _database;

  Future<CountEntityData> save(int number) async {
    int id = await _database
        .into(_database.countEntity)
        .insert(CountEntityCompanion.insert(number: number));

    return await (_database.select(_database.countEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
  }

  Future<List<CountEntityData>> findAll() async {
    return (_database.select(_database.countEntity)).get();
  }

  Future<CountEntityData> findById(int id) async {
    CountEntityData? entity = await (_database.select(_database.countEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();

    if (entity == null) {
      throw MissingDataException();
    }

    return entity;
  }

  Future<bool> increase(int id) async {
    CountEntityData entity = await findById(id);

    return await _database
        .update(_database.countEntity)
        .replace(entity.copyWith(number: entity.number + 1));
  }

  Future<bool> decrease(int id) async {
    CountEntityData entity = await findById(id);
    if (entity.number == 0) return false;

    return await _database
        .update(_database.countEntity)
        .replace(entity.copyWith(number: entity.number - 1));
  }
}
