// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditTodoEventTearOff {
  const _$EditTodoEventTearOff();

  _EditTodoTitleChanged titleChanged(String title) {
    return _EditTodoTitleChanged(
      title,
    );
  }

  _EditTodoDescriptionChanged descriptionChanged(String description) {
    return _EditTodoDescriptionChanged(
      description,
    );
  }

  _EditTodoDueDateChanged dueDateChanged(DateTime? dueDate) {
    return _EditTodoDueDateChanged(
      dueDate,
    );
  }

  _EditTodoPriorityChanged priorityChanged(todo_model.Priority priority) {
    return _EditTodoPriorityChanged(
      priority,
    );
  }

  _EditTodoSubmitted submitted() {
    return _EditTodoSubmitted();
  }
}

/// @nodoc
const $EditTodoEvent = _$EditTodoEventTearOff();

/// @nodoc
mixin _$EditTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoEventCopyWith<$Res> {
  factory $EditTodoEventCopyWith(
          EditTodoEvent value, $Res Function(EditTodoEvent) then) =
      _$EditTodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditTodoEventCopyWithImpl<$Res>
    implements $EditTodoEventCopyWith<$Res> {
  _$EditTodoEventCopyWithImpl(this._value, this._then);

  final EditTodoEvent _value;
  // ignore: unused_field
  final $Res Function(EditTodoEvent) _then;
}

/// @nodoc
abstract class _$EditTodoTitleChangedCopyWith<$Res> {
  factory _$EditTodoTitleChangedCopyWith(_EditTodoTitleChanged value,
          $Res Function(_EditTodoTitleChanged) then) =
      __$EditTodoTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$EditTodoTitleChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res>
    implements _$EditTodoTitleChangedCopyWith<$Res> {
  __$EditTodoTitleChangedCopyWithImpl(
      _EditTodoTitleChanged _value, $Res Function(_EditTodoTitleChanged) _then)
      : super(_value, (v) => _then(v as _EditTodoTitleChanged));

  @override
  _EditTodoTitleChanged get _value => super._value as _EditTodoTitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_EditTodoTitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditTodoTitleChanged implements _EditTodoTitleChanged {
  _$_EditTodoTitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'EditTodoEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTodoTitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$EditTodoTitleChangedCopyWith<_EditTodoTitleChanged> get copyWith =>
      __$EditTodoTitleChangedCopyWithImpl<_EditTodoTitleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _EditTodoTitleChanged implements EditTodoEvent {
  factory _EditTodoTitleChanged(String title) = _$_EditTodoTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$EditTodoTitleChangedCopyWith<_EditTodoTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTodoDescriptionChangedCopyWith<$Res> {
  factory _$EditTodoDescriptionChangedCopyWith(
          _EditTodoDescriptionChanged value,
          $Res Function(_EditTodoDescriptionChanged) then) =
      __$EditTodoDescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$EditTodoDescriptionChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res>
    implements _$EditTodoDescriptionChangedCopyWith<$Res> {
  __$EditTodoDescriptionChangedCopyWithImpl(_EditTodoDescriptionChanged _value,
      $Res Function(_EditTodoDescriptionChanged) _then)
      : super(_value, (v) => _then(v as _EditTodoDescriptionChanged));

  @override
  _EditTodoDescriptionChanged get _value =>
      super._value as _EditTodoDescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_EditTodoDescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditTodoDescriptionChanged implements _EditTodoDescriptionChanged {
  _$_EditTodoDescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'EditTodoEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTodoDescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$EditTodoDescriptionChangedCopyWith<_EditTodoDescriptionChanged>
      get copyWith => __$EditTodoDescriptionChangedCopyWithImpl<
          _EditTodoDescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _EditTodoDescriptionChanged implements EditTodoEvent {
  factory _EditTodoDescriptionChanged(String description) =
      _$_EditTodoDescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$EditTodoDescriptionChangedCopyWith<_EditTodoDescriptionChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTodoDueDateChangedCopyWith<$Res> {
  factory _$EditTodoDueDateChangedCopyWith(_EditTodoDueDateChanged value,
          $Res Function(_EditTodoDueDateChanged) then) =
      __$EditTodoDueDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime? dueDate});
}

/// @nodoc
class __$EditTodoDueDateChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res>
    implements _$EditTodoDueDateChangedCopyWith<$Res> {
  __$EditTodoDueDateChangedCopyWithImpl(_EditTodoDueDateChanged _value,
      $Res Function(_EditTodoDueDateChanged) _then)
      : super(_value, (v) => _then(v as _EditTodoDueDateChanged));

  @override
  _EditTodoDueDateChanged get _value => super._value as _EditTodoDueDateChanged;

  @override
  $Res call({
    Object? dueDate = freezed,
  }) {
    return _then(_EditTodoDueDateChanged(
      dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_EditTodoDueDateChanged implements _EditTodoDueDateChanged {
  _$_EditTodoDueDateChanged(this.dueDate);

  @override
  final DateTime? dueDate;

  @override
  String toString() {
    return 'EditTodoEvent.dueDateChanged(dueDate: $dueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTodoDueDateChanged &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dueDate));

  @JsonKey(ignore: true)
  @override
  _$EditTodoDueDateChangedCopyWith<_EditTodoDueDateChanged> get copyWith =>
      __$EditTodoDueDateChangedCopyWithImpl<_EditTodoDueDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) {
    return dueDateChanged(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) {
    return dueDateChanged?.call(dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) {
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) {
    return dueDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class _EditTodoDueDateChanged implements EditTodoEvent {
  factory _EditTodoDueDateChanged(DateTime? dueDate) =
      _$_EditTodoDueDateChanged;

  DateTime? get dueDate;
  @JsonKey(ignore: true)
  _$EditTodoDueDateChangedCopyWith<_EditTodoDueDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTodoPriorityChangedCopyWith<$Res> {
  factory _$EditTodoPriorityChangedCopyWith(_EditTodoPriorityChanged value,
          $Res Function(_EditTodoPriorityChanged) then) =
      __$EditTodoPriorityChangedCopyWithImpl<$Res>;
  $Res call({todo_model.Priority priority});
}

/// @nodoc
class __$EditTodoPriorityChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res>
    implements _$EditTodoPriorityChangedCopyWith<$Res> {
  __$EditTodoPriorityChangedCopyWithImpl(_EditTodoPriorityChanged _value,
      $Res Function(_EditTodoPriorityChanged) _then)
      : super(_value, (v) => _then(v as _EditTodoPriorityChanged));

  @override
  _EditTodoPriorityChanged get _value =>
      super._value as _EditTodoPriorityChanged;

  @override
  $Res call({
    Object? priority = freezed,
  }) {
    return _then(_EditTodoPriorityChanged(
      priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as todo_model.Priority,
    ));
  }
}

/// @nodoc

class _$_EditTodoPriorityChanged implements _EditTodoPriorityChanged {
  _$_EditTodoPriorityChanged(this.priority);

  @override
  final todo_model.Priority priority;

  @override
  String toString() {
    return 'EditTodoEvent.priorityChanged(priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTodoPriorityChanged &&
            const DeepCollectionEquality().equals(other.priority, priority));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(priority));

  @JsonKey(ignore: true)
  @override
  _$EditTodoPriorityChangedCopyWith<_EditTodoPriorityChanged> get copyWith =>
      __$EditTodoPriorityChangedCopyWithImpl<_EditTodoPriorityChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) {
    return priorityChanged(priority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) {
    return priorityChanged?.call(priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) {
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) {
    return priorityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class _EditTodoPriorityChanged implements EditTodoEvent {
  factory _EditTodoPriorityChanged(todo_model.Priority priority) =
      _$_EditTodoPriorityChanged;

  todo_model.Priority get priority;
  @JsonKey(ignore: true)
  _$EditTodoPriorityChangedCopyWith<_EditTodoPriorityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTodoSubmittedCopyWith<$Res> {
  factory _$EditTodoSubmittedCopyWith(
          _EditTodoSubmitted value, $Res Function(_EditTodoSubmitted) then) =
      __$EditTodoSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditTodoSubmittedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res>
    implements _$EditTodoSubmittedCopyWith<$Res> {
  __$EditTodoSubmittedCopyWithImpl(
      _EditTodoSubmitted _value, $Res Function(_EditTodoSubmitted) _then)
      : super(_value, (v) => _then(v as _EditTodoSubmitted));

  @override
  _EditTodoSubmitted get _value => super._value as _EditTodoSubmitted;
}

/// @nodoc

class _$_EditTodoSubmitted implements _EditTodoSubmitted {
  _$_EditTodoSubmitted();

  @override
  String toString() {
    return 'EditTodoEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EditTodoSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(DateTime? dueDate) dueDateChanged,
    required TResult Function(todo_model.Priority priority) priorityChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(DateTime? dueDate)? dueDateChanged,
    TResult Function(todo_model.Priority priority)? priorityChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodoTitleChanged value) titleChanged,
    required TResult Function(_EditTodoDescriptionChanged value)
        descriptionChanged,
    required TResult Function(_EditTodoDueDateChanged value) dueDateChanged,
    required TResult Function(_EditTodoPriorityChanged value) priorityChanged,
    required TResult Function(_EditTodoSubmitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodoTitleChanged value)? titleChanged,
    TResult Function(_EditTodoDescriptionChanged value)? descriptionChanged,
    TResult Function(_EditTodoDueDateChanged value)? dueDateChanged,
    TResult Function(_EditTodoPriorityChanged value)? priorityChanged,
    TResult Function(_EditTodoSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _EditTodoSubmitted implements EditTodoEvent {
  factory _EditTodoSubmitted() = _$_EditTodoSubmitted;
}

/// @nodoc
class _$EditTodoStateTearOff {
  const _$EditTodoStateTearOff();

  _EditTodoState __(
      EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description,
      bool isNewTodo,
      DateTime? dueDate,
      todo_model.Priority priority) {
    return _EditTodoState(
      status,
      initialTodo,
      title,
      description,
      isNewTodo,
      dueDate,
      priority,
    );
  }
}

/// @nodoc
const $EditTodoState = _$EditTodoStateTearOff();

/// @nodoc
mixin _$EditTodoState {
  EditTodoStatus get status => throw _privateConstructorUsedError;
  Todo? get initialTodo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isNewTodo => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  todo_model.Priority get priority => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTodoStateCopyWith<EditTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoStateCopyWith<$Res> {
  factory $EditTodoStateCopyWith(
          EditTodoState value, $Res Function(EditTodoState) then) =
      _$EditTodoStateCopyWithImpl<$Res>;
  $Res call(
      {EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description,
      bool isNewTodo,
      DateTime? dueDate,
      todo_model.Priority priority});

  $TodoCopyWith<$Res>? get initialTodo;
}

/// @nodoc
class _$EditTodoStateCopyWithImpl<$Res>
    implements $EditTodoStateCopyWith<$Res> {
  _$EditTodoStateCopyWithImpl(this._value, this._then);

  final EditTodoState _value;
  // ignore: unused_field
  final $Res Function(EditTodoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTodo = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isNewTodo = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditTodoStatus,
      initialTodo: initialTodo == freezed
          ? _value.initialTodo
          : initialTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNewTodo: isNewTodo == freezed
          ? _value.isNewTodo
          : isNewTodo // ignore: cast_nullable_to_non_nullable
              as bool,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as todo_model.Priority,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get initialTodo {
    if (_value.initialTodo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.initialTodo!, (value) {
      return _then(_value.copyWith(initialTodo: value));
    });
  }
}

/// @nodoc
abstract class _$EditTodoStateCopyWith<$Res>
    implements $EditTodoStateCopyWith<$Res> {
  factory _$EditTodoStateCopyWith(
          _EditTodoState value, $Res Function(_EditTodoState) then) =
      __$EditTodoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description,
      bool isNewTodo,
      DateTime? dueDate,
      todo_model.Priority priority});

  @override
  $TodoCopyWith<$Res>? get initialTodo;
}

/// @nodoc
class __$EditTodoStateCopyWithImpl<$Res>
    extends _$EditTodoStateCopyWithImpl<$Res>
    implements _$EditTodoStateCopyWith<$Res> {
  __$EditTodoStateCopyWithImpl(
      _EditTodoState _value, $Res Function(_EditTodoState) _then)
      : super(_value, (v) => _then(v as _EditTodoState));

  @override
  _EditTodoState get _value => super._value as _EditTodoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTodo = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isNewTodo = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
  }) {
    return _then(_EditTodoState(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditTodoStatus,
      initialTodo == freezed
          ? _value.initialTodo
          : initialTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNewTodo == freezed
          ? _value.isNewTodo
          : isNewTodo // ignore: cast_nullable_to_non_nullable
              as bool,
      dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as todo_model.Priority,
    ));
  }
}

/// @nodoc

class _$_EditTodoState extends _EditTodoState {
  _$_EditTodoState(this.status, this.initialTodo, this.title, this.description,
      this.isNewTodo, this.dueDate, this.priority)
      : super._();

  @override
  final EditTodoStatus status;
  @override
  final Todo? initialTodo;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isNewTodo;
  @override
  final DateTime? dueDate;
  @override
  final todo_model.Priority priority;

  @override
  String toString() {
    return 'EditTodoState.__(status: $status, initialTodo: $initialTodo, title: $title, description: $description, isNewTodo: $isNewTodo, dueDate: $dueDate, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTodoState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.initialTodo, initialTodo) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isNewTodo, isNewTodo) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.priority, priority));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(initialTodo),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isNewTodo),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(priority));

  @JsonKey(ignore: true)
  @override
  _$EditTodoStateCopyWith<_EditTodoState> get copyWith =>
      __$EditTodoStateCopyWithImpl<_EditTodoState>(this, _$identity);
}

abstract class _EditTodoState extends EditTodoState {
  factory _EditTodoState(
      EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description,
      bool isNewTodo,
      DateTime? dueDate,
      todo_model.Priority priority) = _$_EditTodoState;
  _EditTodoState._() : super._();

  @override
  EditTodoStatus get status;
  @override
  Todo? get initialTodo;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isNewTodo;
  @override
  DateTime? get dueDate;
  @override
  todo_model.Priority get priority;
  @override
  @JsonKey(ignore: true)
  _$EditTodoStateCopyWith<_EditTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
