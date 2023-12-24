import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_dto.g.dart';
part 'count_dto.freezed.dart';

@freezed
class CountDto with _$CountDto {
  const factory CountDto({
    int? id,
    required int number,
  }) = _CountDto;

  factory CountDto.fromJson(Map<String, dynamic> json) => _$CountDtoFromJson(json);
}