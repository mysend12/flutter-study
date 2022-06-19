import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homework/domain/model/category.dart';
import 'package:image_picker/image_picker.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  factory CategoryState({
    required List<Category> categories,
    required List<SharedMediaFile> sharedFiles,
    required List<XFile> imagePickerFileList,
  }) = _CategoryState;
}