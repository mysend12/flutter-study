// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Favorite> get favorites => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Category> categories,
      List<Favorite> favorites,
      String subject,
      int index});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? favorites = freezed,
    Object? subject = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Category> categories,
      List<Favorite> favorites,
      String subject,
      int index});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? categories = freezed,
    Object? favorites = freezed,
    Object? subject = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_HomeState(
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      favorites: favorites == freezed
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {required final List<Category> categories,
      required final List<Favorite> favorites,
      required this.subject,
      required this.index})
      : _categories = categories,
        _favorites = favorites;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Favorite> _favorites;
  @override
  List<Favorite> get favorites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final String subject;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeState(categories: $categories, favorites: $favorites, subject: $subject, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final List<Category> categories,
      required final List<Favorite> favorites,
      required final String subject,
      required final int index}) = _$_HomeState;

  @override
  List<Category> get categories => throw _privateConstructorUsedError;
  @override
  List<Favorite> get favorites => throw _privateConstructorUsedError;
  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
