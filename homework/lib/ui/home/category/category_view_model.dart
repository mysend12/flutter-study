import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework/domain/model/category.dart';
import 'package:homework/domain/use_case/category_use_case.dart';
import 'package:homework/ui/home/category/category_event.dart';
import 'package:homework/ui/home/category/category_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class CategoryViewModel with ChangeNotifier {
  final CategoryUseCase categoryUseCase;

  CategoryViewModel({required this.categoryUseCase}) {
    _loadCategories();
  }

  CategoryState _state = CategoryState(
    categories: [],
    sharedFiles: [],
    imagePickerFileList: [],
  );

  CategoryState get state => _state;

  void onEvent(CategoryEvent event) {
    event.when(
      loadCategories: _loadCategories,
      removeCategory: _removeCategory,
      saveCategory: _saveCategory,
      getSharedFiles: _getSharedFiles,
      getImagePickerFileList: _getImagePickerFileList,
    );
  }

  Future<void> _loadCategories() async {
    var categories = await categoryUseCase.getCategoryList();
    _state = _state.copyWith(categories: categories);
    notifyListeners();
  }

  void _removeCategory(category) async {
    var categoryArray = _state.categories.toList();
    categoryArray.remove(category);
    await categoryUseCase.deleteCategory(category);
    _state = _state.copyWith(categories: categoryArray);
    notifyListeners();
  }

  void _saveCategory(String text) async {
    var category = Category(title: text, color: Random().nextInt(4));
    int id = await categoryUseCase.addCategory(category);
    category = category.copyWith(id: id);

    var categoryArray = _state.categories.toList();
    categoryArray.insert(0, category);

    _state = _state.copyWith(categories: categoryArray, sharedFiles: [], imagePickerFileList: []);
    notifyListeners();
  }

  Future<void> _getSharedFiles(List<SharedMediaFile> list) async {
    _state = state.copyWith(sharedFiles: list);
    print('_getSharedFiles');
    notifyListeners();
  }

  void _getImagePickerFileList(List<XFile> files) {
    print('_getImagePickerFileList');
    print(files.first.path);
    _state = state.copyWith(imagePickerFileList: files);
    notifyListeners();
  }
}
