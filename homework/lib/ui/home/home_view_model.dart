import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework/domain/model/category.dart';
import 'package:homework/domain/use_case/category_use_case.dart';
import 'package:homework/domain/use_case/favorite_use_case.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_state.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class HomeViewModel with ChangeNotifier {
  final CategoryUseCase categoryUseCase;
  final FavoriteUseCase favoriteUseCase;

  HomeViewModel({required this.categoryUseCase, required this.favoriteUseCase}) {
    _loadCategories();
  }

  final _subjectArray = ["Category", "Favorite"];

  HomeState _state = HomeState(
    index: 0,
    subject: "Category",
    categories: [],
    favorites: [],
    showAppBar: true,
    showBottomNavigationBar: true,
    showFloatingActionButton: true,
    sharedFiles: []
  );

  HomeState get state => _state;

  void onEvent(HomeEvent event) {
    event.when(
      loadCategories: _loadCategories,
      changeBottomNavigationIndex: _changeBottomNavigationIndex,
      saveCategory: _saveCategory,
      removeCategory: _removeCateogory,
      toggleAppBar: _toggleAppBar,
      toggleBottomNavigationBar: _toggleBottomNavigationBar,
      toggleFloatingActionButton: _toggleFloatingActionButton,
      getSharedFiles: _getSharedFiles,
    );
  }

  void _toggleAppBar() {
    _state = _state.copyWith(showAppBar: !(_state.showAppBar));
    notifyListeners();
  }

  void _toggleBottomNavigationBar() {
    _state = _state.copyWith(showBottomNavigationBar: !(_state.showBottomNavigationBar));
    notifyListeners();
  }

  void _toggleFloatingActionButton() {
    _state = _state.copyWith(showFloatingActionButton: !(_state.showFloatingActionButton));
    notifyListeners();
  }

  Future<void> _loadCategories() async {
    List<Category> categories = await categoryUseCase.getCategoryList();
    _state = _state.copyWith(categories: categories);
    notifyListeners();
  }

  void _changeBottomNavigationIndex(int index) async {
    _state = _state.copyWith(index: index, subject: _subjectArray[index]);
    notifyListeners();
  }

  void _saveCategory(String text) async {
    var category = Category(title: text, color: Random().nextInt(4));
    int id = await categoryUseCase.addCategory(category);
    category = category.copyWith(id: id);

    var categoryArray = _state.categories.toList();
    categoryArray.insert(0, category);

    _state = _state.copyWith(categories: categoryArray);
    notifyListeners();
  }

  void _removeCateogory(Category category) async {
    var categoryArray = _state.categories.toList();
    categoryArray.remove(category);
    await categoryUseCase.deleteCategory(category);
    _state = _state.copyWith(categories: categoryArray);
    notifyListeners();
  }

  Future<void> _getSharedFiles(List<SharedMediaFile> list) async {
    _state = state.copyWith(sharedFiles: list);
    notifyListeners();
  }
}