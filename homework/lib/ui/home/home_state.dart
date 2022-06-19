import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework/domain/model/favorite.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<Favorite> favorites,
    required String subject,
    required int index,
    required bool showAppBar,
    required bool showBottomNavigationBar,
    required bool showFloatingActionButton,
  }) = _HomeState;
}
