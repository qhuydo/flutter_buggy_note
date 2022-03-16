// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'today_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodayTodoEventTearOff {
  const _$TodayTodoEventTearOff();

  TodayTodoSubscriptionRequested subscriptionRequested() {
    return TodayTodoSubscriptionRequested();
  }
}

/// @nodoc
const $TodayTodoEvent = _$TodayTodoEventTearOff();

/// @nodoc
mixin _$TodayTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayTodoSubscriptionRequested value)
        subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayTodoSubscriptionRequested value)?
        subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayTodoSubscriptionRequested value)?
        subscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayTodoEventCopyWith<$Res> {
  factory $TodayTodoEventCopyWith(
          TodayTodoEvent value, $Res Function(TodayTodoEvent) then) =
      _$TodayTodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodayTodoEventCopyWithImpl<$Res>
    implements $TodayTodoEventCopyWith<$Res> {
  _$TodayTodoEventCopyWithImpl(this._value, this._then);

  final TodayTodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodayTodoEvent) _then;
}

/// @nodoc
abstract class $TodayTodoSubscriptionRequestedCopyWith<$Res> {
  factory $TodayTodoSubscriptionRequestedCopyWith(
          TodayTodoSubscriptionRequested value,
          $Res Function(TodayTodoSubscriptionRequested) then) =
      _$TodayTodoSubscriptionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodayTodoSubscriptionRequestedCopyWithImpl<$Res>
    extends _$TodayTodoEventCopyWithImpl<$Res>
    implements $TodayTodoSubscriptionRequestedCopyWith<$Res> {
  _$TodayTodoSubscriptionRequestedCopyWithImpl(
      TodayTodoSubscriptionRequested _value,
      $Res Function(TodayTodoSubscriptionRequested) _then)
      : super(_value, (v) => _then(v as TodayTodoSubscriptionRequested));

  @override
  TodayTodoSubscriptionRequested get _value =>
      super._value as TodayTodoSubscriptionRequested;
}

/// @nodoc

class _$TodayTodoSubscriptionRequested
    implements TodayTodoSubscriptionRequested {
  _$TodayTodoSubscriptionRequested();

  @override
  String toString() {
    return 'TodayTodoEvent.subscriptionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodayTodoSubscriptionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
  }) {
    return subscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
  }) {
    return subscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayTodoSubscriptionRequested value)
        subscriptionRequested,
  }) {
    return subscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayTodoSubscriptionRequested value)?
        subscriptionRequested,
  }) {
    return subscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayTodoSubscriptionRequested value)?
        subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class TodayTodoSubscriptionRequested implements TodayTodoEvent {
  factory TodayTodoSubscriptionRequested() = _$TodayTodoSubscriptionRequested;
}

/// @nodoc
class _$TodayTodoStateTearOff {
  const _$TodayTodoStateTearOff();

  _TodayTodoState call(
      {TodayTodoStatus status = TodayTodoStatus.initial,
      List<Todo> todos = const []}) {
    return _TodayTodoState(
      status: status,
      todos: todos,
    );
  }
}

/// @nodoc
const $TodayTodoState = _$TodayTodoStateTearOff();

/// @nodoc
mixin _$TodayTodoState {
  TodayTodoStatus get status => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodayTodoStateCopyWith<TodayTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayTodoStateCopyWith<$Res> {
  factory $TodayTodoStateCopyWith(
          TodayTodoState value, $Res Function(TodayTodoState) then) =
      _$TodayTodoStateCopyWithImpl<$Res>;
  $Res call({TodayTodoStatus status, List<Todo> todos});
}

/// @nodoc
class _$TodayTodoStateCopyWithImpl<$Res>
    implements $TodayTodoStateCopyWith<$Res> {
  _$TodayTodoStateCopyWithImpl(this._value, this._then);

  final TodayTodoState _value;
  // ignore: unused_field
  final $Res Function(TodayTodoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodayTodoStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$TodayTodoStateCopyWith<$Res>
    implements $TodayTodoStateCopyWith<$Res> {
  factory _$TodayTodoStateCopyWith(
          _TodayTodoState value, $Res Function(_TodayTodoState) then) =
      __$TodayTodoStateCopyWithImpl<$Res>;
  @override
  $Res call({TodayTodoStatus status, List<Todo> todos});
}

/// @nodoc
class __$TodayTodoStateCopyWithImpl<$Res>
    extends _$TodayTodoStateCopyWithImpl<$Res>
    implements _$TodayTodoStateCopyWith<$Res> {
  __$TodayTodoStateCopyWithImpl(
      _TodayTodoState _value, $Res Function(_TodayTodoState) _then)
      : super(_value, (v) => _then(v as _TodayTodoState));

  @override
  _TodayTodoState get _value => super._value as _TodayTodoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
  }) {
    return _then(_TodayTodoState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodayTodoStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodayTodoState implements _TodayTodoState {
  _$_TodayTodoState(
      {this.status = TodayTodoStatus.initial, this.todos = const []});

  @JsonKey()
  @override
  final TodayTodoStatus status;
  @JsonKey()
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodayTodoState(status: $status, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodayTodoState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$TodayTodoStateCopyWith<_TodayTodoState> get copyWith =>
      __$TodayTodoStateCopyWithImpl<_TodayTodoState>(this, _$identity);
}

abstract class _TodayTodoState implements TodayTodoState {
  factory _TodayTodoState({TodayTodoStatus status, List<Todo> todos}) =
      _$_TodayTodoState;

  @override
  TodayTodoStatus get status;
  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$TodayTodoStateCopyWith<_TodayTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
