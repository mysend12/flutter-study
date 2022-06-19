import 'package:flutter/material.dart';
import 'package:homework/domain/use_case/favorite_use_case.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final FavoriteUseCase favoriteUseCase;

  HomeViewModel({required this.favoriteUseCase});

  final _subjectArray = ["Category", "Favorite"];

  HomeState _state = HomeState(
    index: 0,
    subject: "Category",
    favorites: [],
    showAppBar: true,
    showBottomNavigationBar: true,
    showFloatingActionButton: true,
  );

  HomeState get state => _state;

  void onEvent(HomeEvent event) {
    event.when(
      changeBottomNavigationIndex: _changeBottomNavigationIndex,
      toggleAppBar: _toggleAppBar,
      toggleBottomNavigationBar: _toggleBottomNavigationBar,
      toggleFloatingActionButton: _toggleFloatingActionButton,
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

  void _changeBottomNavigationIndex(int index) async {
    _state = _state.copyWith(index: index, subject: _subjectArray[index]);
    notifyListeners();
  }
}