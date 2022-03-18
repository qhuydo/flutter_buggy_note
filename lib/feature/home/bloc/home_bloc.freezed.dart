// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeEventTodoRemoved todoRemoved({required Todo todo}) {
    return HomeEventTodoRemoved(
      todo: todo,
    );
  }

  HomeEventTodoCompletionToggled todoCompletionToggled(
      {required Todo todo, required bool isCompleted}) {
    return HomeEventTodoCompletionToggled(
      todo: todo,
      isCompleted: isCompleted,
    );
  }

  HomeEventUndoDeletionRequested undoDeletionRequested() {
    return HomeEventUndoDeletionRequested();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventTodoRemoved value) todoRemoved,
    required TResult Function(HomeEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(HomeEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
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
abstract class $HomeEventTodoRemovedCopyWith<$Res> {
  factory $HomeEventTodoRemovedCopyWith(HomeEventTodoRemoved value,
          $Res Function(HomeEventTodoRemoved) then) =
      _$HomeEventTodoRemovedCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$HomeEventTodoRemovedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventTodoRemovedCopyWith<$Res> {
  _$HomeEventTodoRemovedCopyWithImpl(
      HomeEventTodoRemoved _value, $Res Function(HomeEventTodoRemoved) _then)
      : super(_value, (v) => _then(v as HomeEventTodoRemoved));

  @override
  HomeEventTodoRemoved get _value => super._value as HomeEventTodoRemoved;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(HomeEventTodoRemoved(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$HomeEventTodoRemoved implements HomeEventTodoRemoved {
  _$HomeEventTodoRemoved({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'HomeEvent.todoRemoved(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventTodoRemoved &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  $HomeEventTodoRemovedCopyWith<HomeEventTodoRemoved> get copyWith =>
      _$HomeEventTodoRemovedCopyWithImpl<HomeEventTodoRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return todoRemoved(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return todoRemoved?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoRemoved != null) {
      return todoRemoved(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventTodoRemoved value) todoRemoved,
    required TResult Function(HomeEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(HomeEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return todoRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return todoRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoRemoved != null) {
      return todoRemoved(this);
    }
    return orElse();
  }
}

abstract class HomeEventTodoRemoved implements HomeEvent {
  factory HomeEventTodoRemoved({required Todo todo}) = _$HomeEventTodoRemoved;

  Todo get todo;
  @JsonKey(ignore: true)
  $HomeEventTodoRemovedCopyWith<HomeEventTodoRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventTodoCompletionToggledCopyWith<$Res> {
  factory $HomeEventTodoCompletionToggledCopyWith(
          HomeEventTodoCompletionToggled value,
          $Res Function(HomeEventTodoCompletionToggled) then) =
      _$HomeEventTodoCompletionToggledCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isCompleted});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$HomeEventTodoCompletionToggledCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventTodoCompletionToggledCopyWith<$Res> {
  _$HomeEventTodoCompletionToggledCopyWithImpl(
      HomeEventTodoCompletionToggled _value,
      $Res Function(HomeEventTodoCompletionToggled) _then)
      : super(_value, (v) => _then(v as HomeEventTodoCompletionToggled));

  @override
  HomeEventTodoCompletionToggled get _value =>
      super._value as HomeEventTodoCompletionToggled;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(HomeEventTodoCompletionToggled(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$HomeEventTodoCompletionToggled
    implements HomeEventTodoCompletionToggled {
  _$HomeEventTodoCompletionToggled(
      {required this.todo, required this.isCompleted});

  @override
  final Todo todo;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'HomeEvent.todoCompletionToggled(todo: $todo, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventTodoCompletionToggled &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(isCompleted));

  @JsonKey(ignore: true)
  @override
  $HomeEventTodoCompletionToggledCopyWith<HomeEventTodoCompletionToggled>
      get copyWith => _$HomeEventTodoCompletionToggledCopyWithImpl<
          HomeEventTodoCompletionToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return todoCompletionToggled(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return todoCompletionToggled?.call(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoCompletionToggled != null) {
      return todoCompletionToggled(todo, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventTodoRemoved value) todoRemoved,
    required TResult Function(HomeEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(HomeEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return todoCompletionToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return todoCompletionToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoCompletionToggled != null) {
      return todoCompletionToggled(this);
    }
    return orElse();
  }
}

abstract class HomeEventTodoCompletionToggled implements HomeEvent {
  factory HomeEventTodoCompletionToggled(
      {required Todo todo,
      required bool isCompleted}) = _$HomeEventTodoCompletionToggled;

  Todo get todo;
  bool get isCompleted;
  @JsonKey(ignore: true)
  $HomeEventTodoCompletionToggledCopyWith<HomeEventTodoCompletionToggled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventUndoDeletionRequestedCopyWith<$Res> {
  factory $HomeEventUndoDeletionRequestedCopyWith(
          HomeEventUndoDeletionRequested value,
          $Res Function(HomeEventUndoDeletionRequested) then) =
      _$HomeEventUndoDeletionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventUndoDeletionRequestedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventUndoDeletionRequestedCopyWith<$Res> {
  _$HomeEventUndoDeletionRequestedCopyWithImpl(
      HomeEventUndoDeletionRequested _value,
      $Res Function(HomeEventUndoDeletionRequested) _then)
      : super(_value, (v) => _then(v as HomeEventUndoDeletionRequested));

  @override
  HomeEventUndoDeletionRequested get _value =>
      super._value as HomeEventUndoDeletionRequested;
}

/// @nodoc

class _$HomeEventUndoDeletionRequested
    implements HomeEventUndoDeletionRequested {
  _$HomeEventUndoDeletionRequested();

  @override
  String toString() {
    return 'HomeEvent.undoDeletionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventUndoDeletionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return undoDeletionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return undoDeletionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (undoDeletionRequested != null) {
      return undoDeletionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventTodoRemoved value) todoRemoved,
    required TResult Function(HomeEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(HomeEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return undoDeletionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return undoDeletionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (undoDeletionRequested != null) {
      return undoDeletionRequested(this);
    }
    return orElse();
  }
}

abstract class HomeEventUndoDeletionRequested implements HomeEvent {
  factory HomeEventUndoDeletionRequested() = _$HomeEventUndoDeletionRequested;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {HomeStatus status = HomeStatus.initial, Todo? recentlyRemovedTodo}) {
    return _HomeState(
      status: status,
      recentlyRemovedTodo: recentlyRemovedTodo,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  Todo? get recentlyRemovedTodo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({HomeStatus status, Todo? recentlyRemovedTodo});

  $TodoCopyWith<$Res>? get recentlyRemovedTodo;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? recentlyRemovedTodo = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      recentlyRemovedTodo: recentlyRemovedTodo == freezed
          ? _value.recentlyRemovedTodo
          : recentlyRemovedTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get recentlyRemovedTodo {
    if (_value.recentlyRemovedTodo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.recentlyRemovedTodo!, (value) {
      return _then(_value.copyWith(recentlyRemovedTodo: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({HomeStatus status, Todo? recentlyRemovedTodo});

  @override
  $TodoCopyWith<$Res>? get recentlyRemovedTodo;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? status = freezed,
    Object? recentlyRemovedTodo = freezed,
  }) {
    return _then(_HomeState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      recentlyRemovedTodo: recentlyRemovedTodo == freezed
          ? _value.recentlyRemovedTodo
          : recentlyRemovedTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  _$_HomeState({this.status = HomeStatus.initial, this.recentlyRemovedTodo})
      : super._();

  @JsonKey()
  @override
  final HomeStatus status;
  @override
  final Todo? recentlyRemovedTodo;

  @override
  String toString() {
    return 'HomeState(status: $status, recentlyRemovedTodo: $recentlyRemovedTodo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.recentlyRemovedTodo, recentlyRemovedTodo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(recentlyRemovedTodo));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState({HomeStatus status, Todo? recentlyRemovedTodo}) =
      _$_HomeState;
  _HomeState._() : super._();

  @override
  HomeStatus get status;
  @override
  Todo? get recentlyRemovedTodo;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
