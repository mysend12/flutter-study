import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework/domain/model/category.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

part 'category_event.freezed.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.loadCategories() = LoadCategories;
  const factory CategoryEvent.removeCategory(Category category) = RemoveCategory;
  const factory CategoryEvent.saveCategory(String text) = SaveCategory;
  const factory CategoryEvent.getSharedFiles(List<SharedMediaFile> list) = GetSharedFiles;
}