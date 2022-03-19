// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchHistory _$SearchHistoryFromJson(Map<String, dynamic> json) {
  return _SearchHistory.fromJson(json);
}

/// @nodoc
class _$SearchHistoryTearOff {
  const _$SearchHistoryTearOff();

  _SearchHistory call({String keyword = ''}) {
    return _SearchHistory(
      keyword: keyword,
    );
  }

  SearchHistory fromJson(Map<String, Object?> json) {
    return SearchHistory.fromJson(json);
  }
}

/// @nodoc
const $SearchHistory = _$SearchHistoryTearOff();

/// @nodoc
mixin _$SearchHistory {
  String get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryCopyWith<SearchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryCopyWith<$Res> {
  factory $SearchHistoryCopyWith(
          SearchHistory value, $Res Function(SearchHistory) then) =
      _$SearchHistoryCopyWithImpl<$Res>;
  $Res call({String keyword});
}

/// @nodoc
class _$SearchHistoryCopyWithImpl<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  _$SearchHistoryCopyWithImpl(this._value, this._then);

  final SearchHistory _value;
  // ignore: unused_field
  final $Res Function(SearchHistory) _then;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchHistoryCopyWith<$Res>
    implements $SearchHistoryCopyWith<$Res> {
  factory _$SearchHistoryCopyWith(
          _SearchHistory value, $Res Function(_SearchHistory) then) =
      __$SearchHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String keyword});
}

/// @nodoc
class __$SearchHistoryCopyWithImpl<$Res>
    extends _$SearchHistoryCopyWithImpl<$Res>
    implements _$SearchHistoryCopyWith<$Res> {
  __$SearchHistoryCopyWithImpl(
      _SearchHistory _value, $Res Function(_SearchHistory) _then)
      : super(_value, (v) => _then(v as _SearchHistory));

  @override
  _SearchHistory get _value => super._value as _SearchHistory;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_SearchHistory(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchHistory implements _SearchHistory {
  const _$_SearchHistory({this.keyword = ''});

  factory _$_SearchHistory.fromJson(Map<String, dynamic> json) =>
      _$$_SearchHistoryFromJson(json);

  @JsonKey()
  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchHistory(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchHistory &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$SearchHistoryCopyWith<_SearchHistory> get copyWith =>
      __$SearchHistoryCopyWithImpl<_SearchHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchHistoryToJson(this);
  }
}

abstract class _SearchHistory implements SearchHistory {
  const factory _SearchHistory({String keyword}) = _$_SearchHistory;

  factory _SearchHistory.fromJson(Map<String, dynamic> json) =
      _$_SearchHistory.fromJson;

  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$SearchHistoryCopyWith<_SearchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
