import 'package:homework/domain/model/favorite.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteDAO {
  Database db;

  FavoriteDAO(this.db);

  Future<Favorite?> getFavoriteById(int id) async {
    final List<Map<String, dynamic>> maps = await db.query(
      'favorite',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) return Favorite.fromJson(maps.first);
    return null;
  }

  Future<List<Favorite>> getFavoriteList() async {
    final List<Map<String, dynamic>> maps = await db.query('favorite');
    return maps.map((e) => Favorite.fromJson(e)).toList();
  }

  Future<void> insertFavorite(Favorite entity) async {
    await db.insert('favorite', entity.toJson());
  }

  Future<void> deleteFavorite(Favorite entity) async {
    await db.delete(
        'favorite',
      where: 'id = ?',
      whereArgs: [entity.id],
    );
  }


}