import 'package:homework/data/repository/category_repository.dart';
import 'package:homework/domain/model/category.dart';

class CategoryUseCase {
  final CategoryRepository categoryRepository;

  CategoryUseCase(this.categoryRepository);

  Future<int> addCategory(Category category) async {
    return await categoryRepository.insertCategory(category);
  }

  Future<void> deleteCategory(Category category) async {
    await categoryRepository.deleteCategory(category);
  }

  Future<List<Category>> getCategoryList() async {
    List<Category> list = await categoryRepository.getCategoryList();
    return list.reversed.toList();
  }
}