import 'package:homework/domain/model/category.dart';
import 'package:sqflite/sqflite.dart';

class CategoryDAO {
  Database db;

  CategoryDAO(this.db);

  Future<List<Category>> getCategoryList() async {
    final List<Map<String, dynamic>> maps = await db.query('category');
    return maps.map((e) => Category.fromJson(e)).toList();
  }

  Future<int> insertCategory(Category entity) async {
    return await db.insert('category', entity.toJson());
  }

  Future<void> deleteCategory(Category entity) async {
    await db.delete(
        'category',
      where: 'id = ?',
      whereArgs: [entity.id],
    );
  }


}