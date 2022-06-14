import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework/domain/model/category.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadCategories() = LoadCategories;
  const factory HomeEvent.changeBottomNavigationIndex(int index) = ChangeBottomNavigationIndex;
  const factory HomeEvent.saveCategory(String text) = SaveCategory;
  const factory HomeEvent.removeCategory(Category category) = RemoveCategory;
  const factory HomeEvent.toggleAppBar() = ToggleAppBar;
  const factory HomeEvent.toggleBottomNavigationBar() = ToggleBottomNavigationBar;
  const factory HomeEvent.toggleFloatingActionButton() = ToggleFloatingActionButton;
  const factory HomeEvent.getSharedFiles(List<SharedMediaFile> list) = GetSharedFiles;

}