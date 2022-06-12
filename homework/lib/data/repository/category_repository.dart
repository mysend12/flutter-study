import 'package:homework/data/data_source/db/category_dao.dart';
import 'package:homework/domain/model/category.dart';

class CategoryRepository {
  final CategoryDAO categoryDAO;
  CategoryRepository(this.categoryDAO);

  Future<void> deleteCategory(Category entity) async {
    categoryDAO.deleteCategory(entity);
  }

  Future<int> insertCategory(Category entity) async {
    return categoryDAO.insertCategory(entity);
  }

  Future<List<Category>> getCategoryList() async {
    return categoryDAO.getCategoryList();
  }
}