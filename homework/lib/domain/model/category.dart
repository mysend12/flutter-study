import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    required String title,
    required int color,
    int? id,
}) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

}
