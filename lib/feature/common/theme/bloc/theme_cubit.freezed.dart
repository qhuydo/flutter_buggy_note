// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  return _ThemeState.fromJson(json);
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeState call(
      {FlexScheme scheme = FlexScheme.blueWhale,
      ThemeMode mode = ThemeMode.system,
      bool useFlexColourTheme = true}) {
    return _ThemeState(
      scheme: scheme,
      mode: mode,
      useFlexColourTheme: useFlexColourTheme,
    );
  }

  ThemeState fromJson(Map<String, Object?> json) {
    return ThemeState.fromJson(json);
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  FlexScheme get scheme => throw _privateConstructorUsedError;
  ThemeMode get mode => throw _privateConstructorUsedError;
  bool get useFlexColourTheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({FlexScheme scheme, ThemeMode mode, bool useFlexColourTheme});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? scheme = freezed,
    Object? mode = freezed,
    Object? useFlexColourTheme = freezed,
  }) {
    return _then(_value.copyWith(
      scheme: scheme == freezed
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as FlexScheme,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      useFlexColourTheme: useFlexColourTheme == freezed
          ? _value.useFlexColourTheme
          : useFlexColourTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({FlexScheme scheme, ThemeMode mode, bool useFlexColourTheme});
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object? scheme = freezed,
    Object? mode = freezed,
    Object? useFlexColourTheme = freezed,
  }) {
    return _then(_ThemeState(
      scheme: scheme == freezed
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as FlexScheme,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      useFlexColourTheme: useFlexColourTheme == freezed
          ? _value.useFlexColourTheme
          : useFlexColourTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThemeState extends _ThemeState {
  const _$_ThemeState(
      {this.scheme = FlexScheme.blueWhale,
      this.mode = ThemeMode.system,
      this.useFlexColourTheme = true})
      : super._();

  factory _$_ThemeState.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeStateFromJson(json);

  @JsonKey()
  @override
  final FlexScheme scheme;
  @JsonKey()
  @override
  final ThemeMode mode;
  @JsonKey()
  @override
  final bool useFlexColourTheme;

  @override
  String toString() {
    return 'ThemeState(scheme: $scheme, mode: $mode, useFlexColourTheme: $useFlexColourTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeState &&
            const DeepCollectionEquality().equals(other.scheme, scheme) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality()
                .equals(other.useFlexColourTheme, useFlexColourTheme));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheme),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(useFlexColourTheme));

  @JsonKey(ignore: true)
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeStateToJson(this);
  }
}

abstract class _ThemeState extends ThemeState {
  const factory _ThemeState(
      {FlexScheme scheme,
      ThemeMode mode,
      bool useFlexColourTheme}) = _$_ThemeState;
  const _ThemeState._() : super._();

  factory _ThemeState.fromJson(Map<String, dynamic> json) =
      _$_ThemeState.fromJson;

  @override
  FlexScheme get scheme;
  @override
  ThemeMode get mode;
  @override
  bool get useFlexColourTheme;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
