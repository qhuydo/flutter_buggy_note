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

  _HomeEventViewModeChanged viewModeChanged(ViewMode viewMode) {
    return _HomeEventViewModeChanged(
      viewMode,
    );
  }

  _HomeEventFilterCompletedTodoOptionChanged filterCompletedTodoOptionChanged(
      bool showCompletedNote) {
    return _HomeEventFilterCompletedTodoOptionChanged(
      showCompletedNote,
    );
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
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) {
    return todoRemoved(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) {
    return todoRemoved?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) {
    return todoCompletionToggled(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) {
    return todoCompletionToggled?.call(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) {
    return undoDeletionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) {
    return undoDeletionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
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
abstract class _$HomeEventViewModeChangedCopyWith<$Res> {
  factory _$HomeEventViewModeChangedCopyWith(_HomeEventViewModeChanged value,
          $Res Function(_HomeEventViewModeChanged) then) =
      __$HomeEventViewModeChangedCopyWithImpl<$Res>;
  $Res call({ViewMode viewMode});
}

/// @nodoc
class __$HomeEventViewModeChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$HomeEventViewModeChangedCopyWith<$Res> {
  __$HomeEventViewModeChangedCopyWithImpl(_HomeEventViewModeChanged _value,
      $Res Function(_HomeEventViewModeChanged) _then)
      : super(_value, (v) => _then(v as _HomeEventViewModeChanged));

  @override
  _HomeEventViewModeChanged get _value =>
      super._value as _HomeEventViewModeChanged;

  @override
  $Res call({
    Object? viewMode = freezed,
  }) {
    return _then(_HomeEventViewModeChanged(
      viewMode == freezed
          ? _value.viewMode
          : viewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ));
  }
}

/// @nodoc

class _$_HomeEventViewModeChanged implements _HomeEventViewModeChanged {
  _$_HomeEventViewModeChanged(this.viewMode);

  @override
  final ViewMode viewMode;

  @override
  String toString() {
    return 'HomeEvent.viewModeChanged(viewMode: $viewMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeEventViewModeChanged &&
            const DeepCollectionEquality().equals(other.viewMode, viewMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewMode));

  @JsonKey(ignore: true)
  @override
  _$HomeEventViewModeChangedCopyWith<_HomeEventViewModeChanged> get copyWith =>
      __$HomeEventViewModeChangedCopyWithImpl<_HomeEventViewModeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) {
    return viewModeChanged(viewMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) {
    return viewModeChanged?.call(viewMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
    required TResult orElse(),
  }) {
    if (viewModeChanged != null) {
      return viewModeChanged(viewMode);
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
  }) {
    return viewModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
  }) {
    return viewModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
    required TResult orElse(),
  }) {
    if (viewModeChanged != null) {
      return viewModeChanged(this);
    }
    return orElse();
  }
}

abstract class _HomeEventViewModeChanged implements HomeEvent {
  factory _HomeEventViewModeChanged(ViewMode viewMode) =
      _$_HomeEventViewModeChanged;

  ViewMode get viewMode;
  @JsonKey(ignore: true)
  _$HomeEventViewModeChangedCopyWith<_HomeEventViewModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeEventFilterCompletedTodoOptionChangedCopyWith<$Res> {
  factory _$HomeEventFilterCompletedTodoOptionChangedCopyWith(
          _HomeEventFilterCompletedTodoOptionChanged value,
          $Res Function(_HomeEventFilterCompletedTodoOptionChanged) then) =
      __$HomeEventFilterCompletedTodoOptionChangedCopyWithImpl<$Res>;
  $Res call({bool showCompletedNote});
}

/// @nodoc
class __$HomeEventFilterCompletedTodoOptionChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$HomeEventFilterCompletedTodoOptionChangedCopyWith<$Res> {
  __$HomeEventFilterCompletedTodoOptionChangedCopyWithImpl(
      _HomeEventFilterCompletedTodoOptionChanged _value,
      $Res Function(_HomeEventFilterCompletedTodoOptionChanged) _then)
      : super(_value,
            (v) => _then(v as _HomeEventFilterCompletedTodoOptionChanged));

  @override
  _HomeEventFilterCompletedTodoOptionChanged get _value =>
      super._value as _HomeEventFilterCompletedTodoOptionChanged;

  @override
  $Res call({
    Object? showCompletedNote = freezed,
  }) {
    return _then(_HomeEventFilterCompletedTodoOptionChanged(
      showCompletedNote == freezed
          ? _value.showCompletedNote
          : showCompletedNote // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeEventFilterCompletedTodoOptionChanged
    implements _HomeEventFilterCompletedTodoOptionChanged {
  _$_HomeEventFilterCompletedTodoOptionChanged(this.showCompletedNote);

  @override
  final bool showCompletedNote;

  @override
  String toString() {
    return 'HomeEvent.filterCompletedTodoOptionChanged(showCompletedNote: $showCompletedNote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeEventFilterCompletedTodoOptionChanged &&
            const DeepCollectionEquality()
                .equals(other.showCompletedNote, showCompletedNote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showCompletedNote));

  @JsonKey(ignore: true)
  @override
  _$HomeEventFilterCompletedTodoOptionChangedCopyWith<
          _HomeEventFilterCompletedTodoOptionChanged>
      get copyWith => __$HomeEventFilterCompletedTodoOptionChangedCopyWithImpl<
          _HomeEventFilterCompletedTodoOptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
    required TResult Function(ViewMode viewMode) viewModeChanged,
    required TResult Function(bool showCompletedNote)
        filterCompletedTodoOptionChanged,
  }) {
    return filterCompletedTodoOptionChanged(showCompletedNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
  }) {
    return filterCompletedTodoOptionChanged?.call(showCompletedNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    TResult Function(ViewMode viewMode)? viewModeChanged,
    TResult Function(bool showCompletedNote)? filterCompletedTodoOptionChanged,
    required TResult orElse(),
  }) {
    if (filterCompletedTodoOptionChanged != null) {
      return filterCompletedTodoOptionChanged(showCompletedNote);
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
    required TResult Function(_HomeEventViewModeChanged value) viewModeChanged,
    required TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)
        filterCompletedTodoOptionChanged,
  }) {
    return filterCompletedTodoOptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
  }) {
    return filterCompletedTodoOptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventTodoRemoved value)? todoRemoved,
    TResult Function(HomeEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(HomeEventUndoDeletionRequested value)?
        undoDeletionRequested,
    TResult Function(_HomeEventViewModeChanged value)? viewModeChanged,
    TResult Function(_HomeEventFilterCompletedTodoOptionChanged value)?
        filterCompletedTodoOptionChanged,
    required TResult orElse(),
  }) {
    if (filterCompletedTodoOptionChanged != null) {
      return filterCompletedTodoOptionChanged(this);
    }
    return orElse();
  }
}

abstract class _HomeEventFilterCompletedTodoOptionChanged implements HomeEvent {
  factory _HomeEventFilterCompletedTodoOptionChanged(bool showCompletedNote) =
      _$_HomeEventFilterCompletedTodoOptionChanged;

  bool get showCompletedNote;
  @JsonKey(ignore: true)
  _$HomeEventFilterCompletedTodoOptionChangedCopyWith<
          _HomeEventFilterCompletedTodoOptionChanged>
      get copyWith => throw _privateConstructorUsedError;
}

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {@JsonKey(ignore: true) HomeStatus status = HomeStatus.initial,
      @JsonKey(ignore: true) Todo? recentlyRemovedTodo,
      bool showCompletedTodo = true,
      ViewMode todoViewMode = ViewMode.compact}) {
    return _HomeState(
      status: status,
      recentlyRemovedTodo: recentlyRemovedTodo,
      showCompletedTodo: showCompletedTodo,
      todoViewMode: todoViewMode,
    );
  }

  HomeState fromJson(Map<String, Object?> json) {
    return HomeState.fromJson(json);
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @JsonKey(ignore: true)
  HomeStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Todo? get recentlyRemovedTodo => throw _privateConstructorUsedError;
  bool get showCompletedTodo => throw _privateConstructorUsedError;
  ViewMode get todoViewMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) HomeStatus status,
      @JsonKey(ignore: true) Todo? recentlyRemovedTodo,
      bool showCompletedTodo,
      ViewMode todoViewMode});

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
    Object? showCompletedTodo = freezed,
    Object? todoViewMode = freezed,
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
      showCompletedTodo: showCompletedTodo == freezed
          ? _value.showCompletedTodo
          : showCompletedTodo // ignore: cast_nullable_to_non_nullable
              as bool,
      todoViewMode: todoViewMode == freezed
          ? _value.todoViewMode
          : todoViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
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
  $Res call(
      {@JsonKey(ignore: true) HomeStatus status,
      @JsonKey(ignore: true) Todo? recentlyRemovedTodo,
      bool showCompletedTodo,
      ViewMode todoViewMode});

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
    Object? showCompletedTodo = freezed,
    Object? todoViewMode = freezed,
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
      showCompletedTodo: showCompletedTodo == freezed
          ? _value.showCompletedTodo
          : showCompletedTodo // ignore: cast_nullable_to_non_nullable
              as bool,
      todoViewMode: todoViewMode == freezed
          ? _value.todoViewMode
          : todoViewMode // ignore: cast_nullable_to_non_nullable
              as ViewMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeState extends _HomeState {
  const _$_HomeState(
      {@JsonKey(ignore: true) this.status = HomeStatus.initial,
      @JsonKey(ignore: true) this.recentlyRemovedTodo,
      this.showCompletedTodo = true,
      this.todoViewMode = ViewMode.compact})
      : super._();

  factory _$_HomeState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final HomeStatus status;
  @override
  @JsonKey(ignore: true)
  final Todo? recentlyRemovedTodo;
  @JsonKey()
  @override
  final bool showCompletedTodo;
  @JsonKey()
  @override
  final ViewMode todoViewMode;

  @override
  String toString() {
    return 'HomeState(status: $status, recentlyRemovedTodo: $recentlyRemovedTodo, showCompletedTodo: $showCompletedTodo, todoViewMode: $todoViewMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.recentlyRemovedTodo, recentlyRemovedTodo) &&
            const DeepCollectionEquality()
                .equals(other.showCompletedTodo, showCompletedTodo) &&
            const DeepCollectionEquality()
                .equals(other.todoViewMode, todoViewMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(recentlyRemovedTodo),
      const DeepCollectionEquality().hash(showCompletedTodo),
      const DeepCollectionEquality().hash(todoViewMode));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStateToJson(this);
  }
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {@JsonKey(ignore: true) HomeStatus status,
      @JsonKey(ignore: true) Todo? recentlyRemovedTodo,
      bool showCompletedTodo,
      ViewMode todoViewMode}) = _$_HomeState;
  const _HomeState._() : super._();

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$_HomeState.fromJson;

  @override
  @JsonKey(ignore: true)
  HomeStatus get status;
  @override
  @JsonKey(ignore: true)
  Todo? get recentlyRemovedTodo;
  @override
  bool get showCompletedTodo;
  @override
  ViewMode get todoViewMode;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
