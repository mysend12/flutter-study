// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(int index) changeBottomNavigationIndex,
    required TResult Function(String text) saveCategory,
    required TResult Function(Category category) removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategories value) loadCategories,
    required TResult Function(ChangeBottomNavigationIndex value)
        changeBottomNavigationIndex,
    required TResult Function(SaveCategory value) saveCategory,
    required TResult Function(RemoveCategory value) removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$LoadCategoriesCopyWith<$Res> {
  factory _$$LoadCategoriesCopyWith(
          _$LoadCategories value, $Res Function(_$LoadCategories) then) =
      __$$LoadCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$LoadCategoriesCopyWith<$Res> {
  __$$LoadCategoriesCopyWithImpl(
      _$LoadCategories _value, $Res Function(_$LoadCategories) _then)
      : super(_value, (v) => _then(v as _$LoadCategories));

  @override
  _$LoadCategories get _value => super._value as _$LoadCategories;
}

/// @nodoc

class _$LoadCategories implements LoadCategories {
  const _$LoadCategories();

  @override
  String toString() {
    return 'HomeEvent.loadCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(int index) changeBottomNavigationIndex,
    required TResult Function(String text) saveCategory,
    required TResult Function(Category category) removeCategory,
  }) {
    return loadCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
  }) {
    return loadCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategories value) loadCategories,
    required TResult Function(ChangeBottomNavigationIndex value)
        changeBottomNavigationIndex,
    required TResult Function(SaveCategory value) saveCategory,
    required TResult Function(RemoveCategory value) removeCategory,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class LoadCategories implements HomeEvent {
  const factory LoadCategories() = _$LoadCategories;
}

/// @nodoc
abstract class _$$ChangeBottomNavigationIndexCopyWith<$Res> {
  factory _$$ChangeBottomNavigationIndexCopyWith(
          _$ChangeBottomNavigationIndex value,
          $Res Function(_$ChangeBottomNavigationIndex) then) =
      __$$ChangeBottomNavigationIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$ChangeBottomNavigationIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$ChangeBottomNavigationIndexCopyWith<$Res> {
  __$$ChangeBottomNavigationIndexCopyWithImpl(
      _$ChangeBottomNavigationIndex _value,
      $Res Function(_$ChangeBottomNavigationIndex) _then)
      : super(_value, (v) => _then(v as _$ChangeBottomNavigationIndex));

  @override
  _$ChangeBottomNavigationIndex get _value =>
      super._value as _$ChangeBottomNavigationIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$ChangeBottomNavigationIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBottomNavigationIndex implements ChangeBottomNavigationIndex {
  const _$ChangeBottomNavigationIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeBottomNavigationIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBottomNavigationIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$ChangeBottomNavigationIndexCopyWith<_$ChangeBottomNavigationIndex>
      get copyWith => __$$ChangeBottomNavigationIndexCopyWithImpl<
          _$ChangeBottomNavigationIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(int index) changeBottomNavigationIndex,
    required TResult Function(String text) saveCategory,
    required TResult Function(Category category) removeCategory,
  }) {
    return changeBottomNavigationIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
  }) {
    return changeBottomNavigationIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationIndex != null) {
      return changeBottomNavigationIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategories value) loadCategories,
    required TResult Function(ChangeBottomNavigationIndex value)
        changeBottomNavigationIndex,
    required TResult Function(SaveCategory value) saveCategory,
    required TResult Function(RemoveCategory value) removeCategory,
  }) {
    return changeBottomNavigationIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
  }) {
    return changeBottomNavigationIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationIndex != null) {
      return changeBottomNavigationIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeBottomNavigationIndex implements HomeEvent {
  const factory ChangeBottomNavigationIndex(final int index) =
      _$ChangeBottomNavigationIndex;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeBottomNavigationIndexCopyWith<_$ChangeBottomNavigationIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCategoryCopyWith<$Res> {
  factory _$$SaveCategoryCopyWith(
          _$SaveCategory value, $Res Function(_$SaveCategory) then) =
      __$$SaveCategoryCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$SaveCategoryCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$SaveCategoryCopyWith<$Res> {
  __$$SaveCategoryCopyWithImpl(
      _$SaveCategory _value, $Res Function(_$SaveCategory) _then)
      : super(_value, (v) => _then(v as _$SaveCategory));

  @override
  _$SaveCategory get _value => super._value as _$SaveCategory;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$SaveCategory(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCategory implements SaveCategory {
  const _$SaveCategory(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.saveCategory(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCategory &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$SaveCategoryCopyWith<_$SaveCategory> get copyWith =>
      __$$SaveCategoryCopyWithImpl<_$SaveCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(int index) changeBottomNavigationIndex,
    required TResult Function(String text) saveCategory,
    required TResult Function(Category category) removeCategory,
  }) {
    return saveCategory(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
  }) {
    return saveCategory?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
    required TResult orElse(),
  }) {
    if (saveCategory != null) {
      return saveCategory(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategories value) loadCategories,
    required TResult Function(ChangeBottomNavigationIndex value)
        changeBottomNavigationIndex,
    required TResult Function(SaveCategory value) saveCategory,
    required TResult Function(RemoveCategory value) removeCategory,
  }) {
    return saveCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
  }) {
    return saveCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
    required TResult orElse(),
  }) {
    if (saveCategory != null) {
      return saveCategory(this);
    }
    return orElse();
  }
}

abstract class SaveCategory implements HomeEvent {
  const factory SaveCategory(final String text) = _$SaveCategory;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SaveCategoryCopyWith<_$SaveCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCategoryCopyWith<$Res> {
  factory _$$RemoveCategoryCopyWith(
          _$RemoveCategory value, $Res Function(_$RemoveCategory) then) =
      __$$RemoveCategoryCopyWithImpl<$Res>;
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$RemoveCategoryCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$RemoveCategoryCopyWith<$Res> {
  __$$RemoveCategoryCopyWithImpl(
      _$RemoveCategory _value, $Res Function(_$RemoveCategory) _then)
      : super(_value, (v) => _then(v as _$RemoveCategory));

  @override
  _$RemoveCategory get _value => super._value as _$RemoveCategory;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$RemoveCategory(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$RemoveCategory implements RemoveCategory {
  const _$RemoveCategory(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'HomeEvent.removeCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCategory &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$RemoveCategoryCopyWith<_$RemoveCategory> get copyWith =>
      __$$RemoveCategoryCopyWithImpl<_$RemoveCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(int index) changeBottomNavigationIndex,
    required TResult Function(String text) saveCategory,
    required TResult Function(Category category) removeCategory,
  }) {
    return removeCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
  }) {
    return removeCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(int index)? changeBottomNavigationIndex,
    TResult Function(String text)? saveCategory,
    TResult Function(Category category)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategories value) loadCategories,
    required TResult Function(ChangeBottomNavigationIndex value)
        changeBottomNavigationIndex,
    required TResult Function(SaveCategory value) saveCategory,
    required TResult Function(RemoveCategory value) removeCategory,
  }) {
    return removeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
  }) {
    return removeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategories value)? loadCategories,
    TResult Function(ChangeBottomNavigationIndex value)?
        changeBottomNavigationIndex,
    TResult Function(SaveCategory value)? saveCategory,
    TResult Function(RemoveCategory value)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(this);
    }
    return orElse();
  }
}

abstract class RemoveCategory implements HomeEvent {
  const factory RemoveCategory(final Category category) = _$RemoveCategory;

  Category get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoveCategoryCopyWith<_$RemoveCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
