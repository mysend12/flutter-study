import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class Favorite with _$Favorite {
  factory Favorite({
    required String title,
    required int color,
    int? id,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) => _$FavoriteFromJson(json);

}
