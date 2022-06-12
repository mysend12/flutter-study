import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework/domain/model/category.dart';
import 'package:homework/domain/model/favorite.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<Category> categories,
    required List<Favorite> favorites,
    required String subject,
    required int index,
  }) = _HomeState;
}
