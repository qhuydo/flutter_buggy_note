// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoOverviewEventTearOff {
  const _$TodoOverviewEventTearOff();

  TodoOverviewSubscriptionRequested subscriptionRequested() {
    return TodoOverviewSubscriptionRequested();
  }

  TodoOverviewTodoRemoved todoRemoved({required Todo todo}) {
    return TodoOverviewTodoRemoved(
      todo: todo,
    );
  }

  TodoOverviewFilterOptionChanged filterOptionChanged(
      {required TodoViewFilter filter}) {
    return TodoOverviewFilterOptionChanged(
      filter: filter,
    );
  }

  TodoOverviewEventTodoCompletionToggled todoCompletionToggled(
      {required Todo todo, required bool isCompleted}) {
    return TodoOverviewEventTodoCompletionToggled(
      todo: todo,
      isCompleted: isCompleted,
    );
  }

  TodoOverviewEventUndoDeletionRequested undoDeletionRequested() {
    return TodoOverviewEventUndoDeletionRequested();
  }
}

/// @nodoc
const $TodoOverviewEvent = _$TodoOverviewEventTearOff();

/// @nodoc
mixin _$TodoOverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOverviewEventCopyWith<$Res> {
  factory $TodoOverviewEventCopyWith(
          TodoOverviewEvent value, $Res Function(TodoOverviewEvent) then) =
      _$TodoOverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewEventCopyWith<$Res> {
  _$TodoOverviewEventCopyWithImpl(this._value, this._then);

  final TodoOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(TodoOverviewEvent) _then;
}

/// @nodoc
abstract class $TodoOverviewSubscriptionRequestedCopyWith<$Res> {
  factory $TodoOverviewSubscriptionRequestedCopyWith(
          TodoOverviewSubscriptionRequested value,
          $Res Function(TodoOverviewSubscriptionRequested) then) =
      _$TodoOverviewSubscriptionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoOverviewSubscriptionRequestedCopyWithImpl<$Res>
    extends _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewSubscriptionRequestedCopyWith<$Res> {
  _$TodoOverviewSubscriptionRequestedCopyWithImpl(
      TodoOverviewSubscriptionRequested _value,
      $Res Function(TodoOverviewSubscriptionRequested) _then)
      : super(_value, (v) => _then(v as TodoOverviewSubscriptionRequested));

  @override
  TodoOverviewSubscriptionRequested get _value =>
      super._value as TodoOverviewSubscriptionRequested;
}

/// @nodoc

class _$TodoOverviewSubscriptionRequested
    implements TodoOverviewSubscriptionRequested {
  _$TodoOverviewSubscriptionRequested();

  @override
  String toString() {
    return 'TodoOverviewEvent.subscriptionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoOverviewSubscriptionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return subscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return subscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
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
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return subscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return subscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class TodoOverviewSubscriptionRequested implements TodoOverviewEvent {
  factory TodoOverviewSubscriptionRequested() =
      _$TodoOverviewSubscriptionRequested;
}

/// @nodoc
abstract class $TodoOverviewTodoRemovedCopyWith<$Res> {
  factory $TodoOverviewTodoRemovedCopyWith(TodoOverviewTodoRemoved value,
          $Res Function(TodoOverviewTodoRemoved) then) =
      _$TodoOverviewTodoRemovedCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoOverviewTodoRemovedCopyWithImpl<$Res>
    extends _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewTodoRemovedCopyWith<$Res> {
  _$TodoOverviewTodoRemovedCopyWithImpl(TodoOverviewTodoRemoved _value,
      $Res Function(TodoOverviewTodoRemoved) _then)
      : super(_value, (v) => _then(v as TodoOverviewTodoRemoved));

  @override
  TodoOverviewTodoRemoved get _value => super._value as TodoOverviewTodoRemoved;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(TodoOverviewTodoRemoved(
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

class _$TodoOverviewTodoRemoved implements TodoOverviewTodoRemoved {
  _$TodoOverviewTodoRemoved({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoOverviewEvent.todoRemoved(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoOverviewTodoRemoved &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  $TodoOverviewTodoRemovedCopyWith<TodoOverviewTodoRemoved> get copyWith =>
      _$TodoOverviewTodoRemovedCopyWithImpl<TodoOverviewTodoRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return todoRemoved(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return todoRemoved?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
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
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return todoRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return todoRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoRemoved != null) {
      return todoRemoved(this);
    }
    return orElse();
  }
}

abstract class TodoOverviewTodoRemoved implements TodoOverviewEvent {
  factory TodoOverviewTodoRemoved({required Todo todo}) =
      _$TodoOverviewTodoRemoved;

  Todo get todo;
  @JsonKey(ignore: true)
  $TodoOverviewTodoRemovedCopyWith<TodoOverviewTodoRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOverviewFilterOptionChangedCopyWith<$Res> {
  factory $TodoOverviewFilterOptionChangedCopyWith(
          TodoOverviewFilterOptionChanged value,
          $Res Function(TodoOverviewFilterOptionChanged) then) =
      _$TodoOverviewFilterOptionChangedCopyWithImpl<$Res>;
  $Res call({TodoViewFilter filter});
}

/// @nodoc
class _$TodoOverviewFilterOptionChangedCopyWithImpl<$Res>
    extends _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewFilterOptionChangedCopyWith<$Res> {
  _$TodoOverviewFilterOptionChangedCopyWithImpl(
      TodoOverviewFilterOptionChanged _value,
      $Res Function(TodoOverviewFilterOptionChanged) _then)
      : super(_value, (v) => _then(v as TodoOverviewFilterOptionChanged));

  @override
  TodoOverviewFilterOptionChanged get _value =>
      super._value as TodoOverviewFilterOptionChanged;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(TodoOverviewFilterOptionChanged(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoViewFilter,
    ));
  }
}

/// @nodoc

class _$TodoOverviewFilterOptionChanged
    implements TodoOverviewFilterOptionChanged {
  _$TodoOverviewFilterOptionChanged({required this.filter});

  @override
  final TodoViewFilter filter;

  @override
  String toString() {
    return 'TodoOverviewEvent.filterOptionChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoOverviewFilterOptionChanged &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  $TodoOverviewFilterOptionChangedCopyWith<TodoOverviewFilterOptionChanged>
      get copyWith => _$TodoOverviewFilterOptionChangedCopyWithImpl<
          TodoOverviewFilterOptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return filterOptionChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return filterOptionChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (filterOptionChanged != null) {
      return filterOptionChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return filterOptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return filterOptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (filterOptionChanged != null) {
      return filterOptionChanged(this);
    }
    return orElse();
  }
}

abstract class TodoOverviewFilterOptionChanged implements TodoOverviewEvent {
  factory TodoOverviewFilterOptionChanged({required TodoViewFilter filter}) =
      _$TodoOverviewFilterOptionChanged;

  TodoViewFilter get filter;
  @JsonKey(ignore: true)
  $TodoOverviewFilterOptionChangedCopyWith<TodoOverviewFilterOptionChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOverviewEventTodoCompletionToggledCopyWith<$Res> {
  factory $TodoOverviewEventTodoCompletionToggledCopyWith(
          TodoOverviewEventTodoCompletionToggled value,
          $Res Function(TodoOverviewEventTodoCompletionToggled) then) =
      _$TodoOverviewEventTodoCompletionToggledCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isCompleted});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class _$TodoOverviewEventTodoCompletionToggledCopyWithImpl<$Res>
    extends _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewEventTodoCompletionToggledCopyWith<$Res> {
  _$TodoOverviewEventTodoCompletionToggledCopyWithImpl(
      TodoOverviewEventTodoCompletionToggled _value,
      $Res Function(TodoOverviewEventTodoCompletionToggled) _then)
      : super(
            _value, (v) => _then(v as TodoOverviewEventTodoCompletionToggled));

  @override
  TodoOverviewEventTodoCompletionToggled get _value =>
      super._value as TodoOverviewEventTodoCompletionToggled;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(TodoOverviewEventTodoCompletionToggled(
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

class _$TodoOverviewEventTodoCompletionToggled
    implements TodoOverviewEventTodoCompletionToggled {
  _$TodoOverviewEventTodoCompletionToggled(
      {required this.todo, required this.isCompleted});

  @override
  final Todo todo;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'TodoOverviewEvent.todoCompletionToggled(todo: $todo, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoOverviewEventTodoCompletionToggled &&
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
  $TodoOverviewEventTodoCompletionToggledCopyWith<
          TodoOverviewEventTodoCompletionToggled>
      get copyWith => _$TodoOverviewEventTodoCompletionToggledCopyWithImpl<
          TodoOverviewEventTodoCompletionToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return todoCompletionToggled(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return todoCompletionToggled?.call(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
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
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return todoCompletionToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return todoCompletionToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (todoCompletionToggled != null) {
      return todoCompletionToggled(this);
    }
    return orElse();
  }
}

abstract class TodoOverviewEventTodoCompletionToggled
    implements TodoOverviewEvent {
  factory TodoOverviewEventTodoCompletionToggled(
      {required Todo todo,
      required bool isCompleted}) = _$TodoOverviewEventTodoCompletionToggled;

  Todo get todo;
  bool get isCompleted;
  @JsonKey(ignore: true)
  $TodoOverviewEventTodoCompletionToggledCopyWith<
          TodoOverviewEventTodoCompletionToggled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOverviewEventUndoDeletionRequestedCopyWith<$Res> {
  factory $TodoOverviewEventUndoDeletionRequestedCopyWith(
          TodoOverviewEventUndoDeletionRequested value,
          $Res Function(TodoOverviewEventUndoDeletionRequested) then) =
      _$TodoOverviewEventUndoDeletionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoOverviewEventUndoDeletionRequestedCopyWithImpl<$Res>
    extends _$TodoOverviewEventCopyWithImpl<$Res>
    implements $TodoOverviewEventUndoDeletionRequestedCopyWith<$Res> {
  _$TodoOverviewEventUndoDeletionRequestedCopyWithImpl(
      TodoOverviewEventUndoDeletionRequested _value,
      $Res Function(TodoOverviewEventUndoDeletionRequested) _then)
      : super(
            _value, (v) => _then(v as TodoOverviewEventUndoDeletionRequested));

  @override
  TodoOverviewEventUndoDeletionRequested get _value =>
      super._value as TodoOverviewEventUndoDeletionRequested;
}

/// @nodoc

class _$TodoOverviewEventUndoDeletionRequested
    implements TodoOverviewEventUndoDeletionRequested {
  _$TodoOverviewEventUndoDeletionRequested();

  @override
  String toString() {
    return 'TodoOverviewEvent.undoDeletionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoOverviewEventUndoDeletionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionRequested,
    required TResult Function(Todo todo) todoRemoved,
    required TResult Function(TodoViewFilter filter) filterOptionChanged,
    required TResult Function(Todo todo, bool isCompleted)
        todoCompletionToggled,
    required TResult Function() undoDeletionRequested,
  }) {
    return undoDeletionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
    TResult Function(Todo todo, bool isCompleted)? todoCompletionToggled,
    TResult Function()? undoDeletionRequested,
  }) {
    return undoDeletionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionRequested,
    TResult Function(Todo todo)? todoRemoved,
    TResult Function(TodoViewFilter filter)? filterOptionChanged,
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
    required TResult Function(TodoOverviewSubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(TodoOverviewTodoRemoved value) todoRemoved,
    required TResult Function(TodoOverviewFilterOptionChanged value)
        filterOptionChanged,
    required TResult Function(TodoOverviewEventTodoCompletionToggled value)
        todoCompletionToggled,
    required TResult Function(TodoOverviewEventUndoDeletionRequested value)
        undoDeletionRequested,
  }) {
    return undoDeletionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
  }) {
    return undoDeletionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoOverviewSubscriptionRequested value)?
        subscriptionRequested,
    TResult Function(TodoOverviewTodoRemoved value)? todoRemoved,
    TResult Function(TodoOverviewFilterOptionChanged value)?
        filterOptionChanged,
    TResult Function(TodoOverviewEventTodoCompletionToggled value)?
        todoCompletionToggled,
    TResult Function(TodoOverviewEventUndoDeletionRequested value)?
        undoDeletionRequested,
    required TResult orElse(),
  }) {
    if (undoDeletionRequested != null) {
      return undoDeletionRequested(this);
    }
    return orElse();
  }
}

abstract class TodoOverviewEventUndoDeletionRequested
    implements TodoOverviewEvent {
  factory TodoOverviewEventUndoDeletionRequested() =
      _$TodoOverviewEventUndoDeletionRequested;
}

/// @nodoc
class _$TodoOverviewStateTearOff {
  const _$TodoOverviewStateTearOff();

  _TodoOverviewState call(
      {TodoOverViewStatus status = TodoOverViewStatus.initial,
      List<Todo> todos = const [],
      TodoViewFilter filter = TodoViewFilter.all,
      Todo? recentlyRemovedTodo}) {
    return _TodoOverviewState(
      status: status,
      todos: todos,
      filter: filter,
      recentlyRemovedTodo: recentlyRemovedTodo,
    );
  }
}

/// @nodoc
const $TodoOverviewState = _$TodoOverviewStateTearOff();

/// @nodoc
mixin _$TodoOverviewState {
  TodoOverViewStatus get status => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  TodoViewFilter get filter => throw _privateConstructorUsedError;
  Todo? get recentlyRemovedTodo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoOverviewStateCopyWith<TodoOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOverviewStateCopyWith<$Res> {
  factory $TodoOverviewStateCopyWith(
          TodoOverviewState value, $Res Function(TodoOverviewState) then) =
      _$TodoOverviewStateCopyWithImpl<$Res>;
  $Res call(
      {TodoOverViewStatus status,
      List<Todo> todos,
      TodoViewFilter filter,
      Todo? recentlyRemovedTodo});

  $TodoCopyWith<$Res>? get recentlyRemovedTodo;
}

/// @nodoc
class _$TodoOverviewStateCopyWithImpl<$Res>
    implements $TodoOverviewStateCopyWith<$Res> {
  _$TodoOverviewStateCopyWithImpl(this._value, this._then);

  final TodoOverviewState _value;
  // ignore: unused_field
  final $Res Function(TodoOverviewState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
    Object? filter = freezed,
    Object? recentlyRemovedTodo = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoOverViewStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoViewFilter,
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
abstract class _$TodoOverviewStateCopyWith<$Res>
    implements $TodoOverviewStateCopyWith<$Res> {
  factory _$TodoOverviewStateCopyWith(
          _TodoOverviewState value, $Res Function(_TodoOverviewState) then) =
      __$TodoOverviewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TodoOverViewStatus status,
      List<Todo> todos,
      TodoViewFilter filter,
      Todo? recentlyRemovedTodo});

  @override
  $TodoCopyWith<$Res>? get recentlyRemovedTodo;
}

/// @nodoc
class __$TodoOverviewStateCopyWithImpl<$Res>
    extends _$TodoOverviewStateCopyWithImpl<$Res>
    implements _$TodoOverviewStateCopyWith<$Res> {
  __$TodoOverviewStateCopyWithImpl(
      _TodoOverviewState _value, $Res Function(_TodoOverviewState) _then)
      : super(_value, (v) => _then(v as _TodoOverviewState));

  @override
  _TodoOverviewState get _value => super._value as _TodoOverviewState;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
    Object? filter = freezed,
    Object? recentlyRemovedTodo = freezed,
  }) {
    return _then(_TodoOverviewState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoOverViewStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoViewFilter,
      recentlyRemovedTodo: recentlyRemovedTodo == freezed
          ? _value.recentlyRemovedTodo
          : recentlyRemovedTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }
}

/// @nodoc

class _$_TodoOverviewState extends _TodoOverviewState {
  _$_TodoOverviewState(
      {this.status = TodoOverViewStatus.initial,
      this.todos = const [],
      this.filter = TodoViewFilter.all,
      this.recentlyRemovedTodo})
      : super._();

  @JsonKey()
  @override
  final TodoOverViewStatus status;
  @JsonKey()
  @override
  final List<Todo> todos;
  @JsonKey()
  @override
  final TodoViewFilter filter;
  @override
  final Todo? recentlyRemovedTodo;

  @override
  String toString() {
    return 'TodoOverviewState(status: $status, todos: $todos, filter: $filter, recentlyRemovedTodo: $recentlyRemovedTodo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoOverviewState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.recentlyRemovedTodo, recentlyRemovedTodo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(todos),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(recentlyRemovedTodo));

  @JsonKey(ignore: true)
  @override
  _$TodoOverviewStateCopyWith<_TodoOverviewState> get copyWith =>
      __$TodoOverviewStateCopyWithImpl<_TodoOverviewState>(this, _$identity);
}

abstract class _TodoOverviewState extends TodoOverviewState {
  factory _TodoOverviewState(
      {TodoOverViewStatus status,
      List<Todo> todos,
      TodoViewFilter filter,
      Todo? recentlyRemovedTodo}) = _$_TodoOverviewState;
  _TodoOverviewState._() : super._();

  @override
  TodoOverViewStatus get status;
  @override
  List<Todo> get todos;
  @override
  TodoViewFilter get filter;
  @override
  Todo? get recentlyRemovedTodo;
  @override
  @JsonKey(ignore: true)
  _$TodoOverviewStateCopyWith<_TodoOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
