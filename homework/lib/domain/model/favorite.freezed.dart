// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Favorite _$FavoriteFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

/// @nodoc
mixin _$Favorite {
  String get title => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
  $Res call({String title, int color, int? id});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res> implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  final Favorite _value;
  // ignore: unused_field
  final $Res Function(Favorite) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$$_FavoriteCopyWith(
          _$_Favorite value, $Res Function(_$_Favorite) then) =
      __$$_FavoriteCopyWithImpl<$Res>;
  @override
  $Res call({String title, int color, int? id});
}

/// @nodoc
class __$$_FavoriteCopyWithImpl<$Res> extends _$FavoriteCopyWithImpl<$Res>
    implements _$$_FavoriteCopyWith<$Res> {
  __$$_FavoriteCopyWithImpl(
      _$_Favorite _value, $Res Function(_$_Favorite) _then)
      : super(_value, (v) => _then(v as _$_Favorite));

  @override
  _$_Favorite get _value => super._value as _$_Favorite;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Favorite(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorite implements _Favorite {
  _$_Favorite({required this.title, required this.color, this.id});

  factory _$_Favorite.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteFromJson(json);

  @override
  final String title;
  @override
  final int color;
  @override
  final int? id;

  @override
  String toString() {
    return 'Favorite(title: $title, color: $color, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorite &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteCopyWith<_$_Favorite> get copyWith =>
      __$$_FavoriteCopyWithImpl<_$_Favorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteToJson(this);
  }
}

abstract class _Favorite implements Favorite {
  factory _Favorite(
      {required final String title,
      required final int color,
      final int? id}) = _$_Favorite;

  factory _Favorite.fromJson(Map<String, dynamic> json) = _$_Favorite.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get color => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteCopyWith<_$_Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}
