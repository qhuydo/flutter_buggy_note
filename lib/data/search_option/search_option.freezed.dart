// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchOptionTearOff {
  const _$SearchOptionTearOff();

  _SearchOption call(
      {String keyword = '',
      Set<Priority> priorities = const {},
      Set<Label> labels = const {},
      int? colour,
      DateTime? dueDateFrom,
      DateTime? dueDateTo,
      SearchTodoStatusOption? statusOption}) {
    return _SearchOption(
      keyword: keyword,
      priorities: priorities,
      labels: labels,
      colour: colour,
      dueDateFrom: dueDateFrom,
      dueDateTo: dueDateTo,
      statusOption: statusOption,
    );
  }
}

/// @nodoc
const $SearchOption = _$SearchOptionTearOff();

/// @nodoc
mixin _$SearchOption {
  String get keyword => throw _privateConstructorUsedError;
  Set<Priority> get priorities => throw _privateConstructorUsedError;
  Set<Label> get labels => throw _privateConstructorUsedError;
  int? get colour => throw _privateConstructorUsedError;
  DateTime? get dueDateFrom => throw _privateConstructorUsedError;
  DateTime? get dueDateTo => throw _privateConstructorUsedError;
  SearchTodoStatusOption? get statusOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchOptionCopyWith<SearchOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOptionCopyWith<$Res> {
  factory $SearchOptionCopyWith(
          SearchOption value, $Res Function(SearchOption) then) =
      _$SearchOptionCopyWithImpl<$Res>;
  $Res call(
      {String keyword,
      Set<Priority> priorities,
      Set<Label> labels,
      int? colour,
      DateTime? dueDateFrom,
      DateTime? dueDateTo,
      SearchTodoStatusOption? statusOption});
}

/// @nodoc
class _$SearchOptionCopyWithImpl<$Res> implements $SearchOptionCopyWith<$Res> {
  _$SearchOptionCopyWithImpl(this._value, this._then);

  final SearchOption _value;
  // ignore: unused_field
  final $Res Function(SearchOption) _then;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? priorities = freezed,
    Object? labels = freezed,
    Object? colour = freezed,
    Object? dueDateFrom = freezed,
    Object? dueDateTo = freezed,
    Object? statusOption = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      priorities: priorities == freezed
          ? _value.priorities
          : priorities // ignore: cast_nullable_to_non_nullable
              as Set<Priority>,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Set<Label>,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDateFrom: dueDateFrom == freezed
          ? _value.dueDateFrom
          : dueDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDateTo: dueDateTo == freezed
          ? _value.dueDateTo
          : dueDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusOption: statusOption == freezed
          ? _value.statusOption
          : statusOption // ignore: cast_nullable_to_non_nullable
              as SearchTodoStatusOption?,
    ));
  }
}

/// @nodoc
abstract class _$SearchOptionCopyWith<$Res>
    implements $SearchOptionCopyWith<$Res> {
  factory _$SearchOptionCopyWith(
          _SearchOption value, $Res Function(_SearchOption) then) =
      __$SearchOptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String keyword,
      Set<Priority> priorities,
      Set<Label> labels,
      int? colour,
      DateTime? dueDateFrom,
      DateTime? dueDateTo,
      SearchTodoStatusOption? statusOption});
}

/// @nodoc
class __$SearchOptionCopyWithImpl<$Res> extends _$SearchOptionCopyWithImpl<$Res>
    implements _$SearchOptionCopyWith<$Res> {
  __$SearchOptionCopyWithImpl(
      _SearchOption _value, $Res Function(_SearchOption) _then)
      : super(_value, (v) => _then(v as _SearchOption));

  @override
  _SearchOption get _value => super._value as _SearchOption;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? priorities = freezed,
    Object? labels = freezed,
    Object? colour = freezed,
    Object? dueDateFrom = freezed,
    Object? dueDateTo = freezed,
    Object? statusOption = freezed,
  }) {
    return _then(_SearchOption(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      priorities: priorities == freezed
          ? _value.priorities
          : priorities // ignore: cast_nullable_to_non_nullable
              as Set<Priority>,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Set<Label>,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDateFrom: dueDateFrom == freezed
          ? _value.dueDateFrom
          : dueDateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDateTo: dueDateTo == freezed
          ? _value.dueDateTo
          : dueDateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusOption: statusOption == freezed
          ? _value.statusOption
          : statusOption // ignore: cast_nullable_to_non_nullable
              as SearchTodoStatusOption?,
    ));
  }
}

/// @nodoc

class _$_SearchOption extends _SearchOption {
  const _$_SearchOption(
      {this.keyword = '',
      this.priorities = const {},
      this.labels = const {},
      this.colour,
      this.dueDateFrom,
      this.dueDateTo,
      this.statusOption})
      : super._();

  @JsonKey()
  @override
  final String keyword;
  @JsonKey()
  @override
  final Set<Priority> priorities;
  @JsonKey()
  @override
  final Set<Label> labels;
  @override
  final int? colour;
  @override
  final DateTime? dueDateFrom;
  @override
  final DateTime? dueDateTo;
  @override
  final SearchTodoStatusOption? statusOption;

  @override
  String toString() {
    return 'SearchOption(keyword: $keyword, priorities: $priorities, labels: $labels, colour: $colour, dueDateFrom: $dueDateFrom, dueDateTo: $dueDateTo, statusOption: $statusOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchOption &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.priorities, priorities) &&
            const DeepCollectionEquality().equals(other.labels, labels) &&
            const DeepCollectionEquality().equals(other.colour, colour) &&
            const DeepCollectionEquality()
                .equals(other.dueDateFrom, dueDateFrom) &&
            const DeepCollectionEquality().equals(other.dueDateTo, dueDateTo) &&
            const DeepCollectionEquality()
                .equals(other.statusOption, statusOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(priorities),
      const DeepCollectionEquality().hash(labels),
      const DeepCollectionEquality().hash(colour),
      const DeepCollectionEquality().hash(dueDateFrom),
      const DeepCollectionEquality().hash(dueDateTo),
      const DeepCollectionEquality().hash(statusOption));

  @JsonKey(ignore: true)
  @override
  _$SearchOptionCopyWith<_SearchOption> get copyWith =>
      __$SearchOptionCopyWithImpl<_SearchOption>(this, _$identity);
}

abstract class _SearchOption extends SearchOption {
  const factory _SearchOption(
      {String keyword,
      Set<Priority> priorities,
      Set<Label> labels,
      int? colour,
      DateTime? dueDateFrom,
      DateTime? dueDateTo,
      SearchTodoStatusOption? statusOption}) = _$_SearchOption;
  const _SearchOption._() : super._();

  @override
  String get keyword;
  @override
  Set<Priority> get priorities;
  @override
  Set<Label> get labels;
  @override
  int? get colour;
  @override
  DateTime? get dueDateFrom;
  @override
  DateTime? get dueDateTo;
  @override
  SearchTodoStatusOption? get statusOption;
  @override
  @JsonKey(ignore: true)
  _$SearchOptionCopyWith<_SearchOption> get copyWith =>
      throw _privateConstructorUsedError;
}
