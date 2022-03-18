// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(
      {@HiveField(0) required int id,
      @HiveField(1) String title = '',
      @HiveField(2) int? colour,
      @HiveField(3) DateTime? dueDate,
      @HiveField(4) Priority priority = Priority.priority4,
      @HiveField(5) String comment = '',
      @HiveField(6) TodoStatus status = TodoStatus.pending,
      @HiveField(7) dynamic isArchived = false,
      @HiveField(8) dynamic isRemoved = false,
      @HiveField(9) int order = 0,
      @HiveField(10) List<Label> labels = const [],
      @HiveField(11) String description = ''}) {
    return _Todo(
      id: id,
      title: title,
      colour: colour,
      dueDate: dueDate,
      priority: priority,
      comment: comment,
      status: status,
      isArchived: isArchived,
      isRemoved: isRemoved,
      order: order,
      labels: labels,
      description: description,
    );
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get colour => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @HiveField(4)
  Priority get priority => throw _privateConstructorUsedError;
  @HiveField(5)
  String get comment => throw _privateConstructorUsedError;
  @HiveField(6)
  TodoStatus get status => throw _privateConstructorUsedError;
  @HiveField(7)
  dynamic get isArchived => throw _privateConstructorUsedError;
  @HiveField(8)
  dynamic get isRemoved => throw _privateConstructorUsedError;
  @HiveField(9)
  int get order => throw _privateConstructorUsedError;
  @HiveField(10)
  List<Label> get labels => throw _privateConstructorUsedError;
  @HiveField(11)
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) int? colour,
      @HiveField(3) DateTime? dueDate,
      @HiveField(4) Priority priority,
      @HiveField(5) String comment,
      @HiveField(6) TodoStatus status,
      @HiveField(7) dynamic isArchived,
      @HiveField(8) dynamic isRemoved,
      @HiveField(9) int order,
      @HiveField(10) List<Label> labels,
      @HiveField(11) String description});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? colour = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? isArchived = freezed,
    Object? isRemoved = freezed,
    Object? order = freezed,
    Object? labels = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      isArchived: isArchived == freezed
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isRemoved: isRemoved == freezed
          ? _value.isRemoved
          : isRemoved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Label>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) int? colour,
      @HiveField(3) DateTime? dueDate,
      @HiveField(4) Priority priority,
      @HiveField(5) String comment,
      @HiveField(6) TodoStatus status,
      @HiveField(7) dynamic isArchived,
      @HiveField(8) dynamic isRemoved,
      @HiveField(9) int order,
      @HiveField(10) List<Label> labels,
      @HiveField(11) String description});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? colour = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? isArchived = freezed,
    Object? isRemoved = freezed,
    Object? order = freezed,
    Object? labels = freezed,
    Object? description = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      isArchived: isArchived == freezed ? _value.isArchived : isArchived,
      isRemoved: isRemoved == freezed ? _value.isRemoved : isRemoved,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<Label>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: typeIdTodo, adapterName: 'TodoAdapter')
class _$_Todo extends _Todo with DiagnosticableTreeMixin {
  const _$_Todo(
      {@HiveField(0) required this.id,
      @HiveField(1) this.title = '',
      @HiveField(2) this.colour,
      @HiveField(3) this.dueDate,
      @HiveField(4) this.priority = Priority.priority4,
      @HiveField(5) this.comment = '',
      @HiveField(6) this.status = TodoStatus.pending,
      @HiveField(7) this.isArchived = false,
      @HiveField(8) this.isRemoved = false,
      @HiveField(9) this.order = 0,
      @HiveField(10) this.labels = const [],
      @HiveField(11) this.description = ''})
      : super._();

  @override
  @HiveField(0)
  final int id;
  @JsonKey()
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final int? colour;
  @override
  @HiveField(3)
  final DateTime? dueDate;
  @JsonKey()
  @override
  @HiveField(4)
  final Priority priority;
  @JsonKey()
  @override
  @HiveField(5)
  final String comment;
  @JsonKey()
  @override
  @HiveField(6)
  final TodoStatus status;
  @JsonKey()
  @override
  @HiveField(7)
  final dynamic isArchived;
  @JsonKey()
  @override
  @HiveField(8)
  final dynamic isRemoved;
  @JsonKey()
  @override
  @HiveField(9)
  final int order;
  @JsonKey()
  @override
  @HiveField(10)
  final List<Label> labels;
  @JsonKey()
  @override
  @HiveField(11)
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, title: $title, colour: $colour, dueDate: $dueDate, priority: $priority, comment: $comment, status: $status, isArchived: $isArchived, isRemoved: $isRemoved, order: $order, labels: $labels, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('colour', colour))
      ..add(DiagnosticsProperty('dueDate', dueDate))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isArchived', isArchived))
      ..add(DiagnosticsProperty('isRemoved', isRemoved))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.colour, colour) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isArchived, isArchived) &&
            const DeepCollectionEquality().equals(other.isRemoved, isRemoved) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.labels, labels) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(colour),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isArchived),
      const DeepCollectionEquality().hash(isRemoved),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(labels),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo extends Todo {
  const factory _Todo(
      {@HiveField(0) required int id,
      @HiveField(1) String title,
      @HiveField(2) int? colour,
      @HiveField(3) DateTime? dueDate,
      @HiveField(4) Priority priority,
      @HiveField(5) String comment,
      @HiveField(6) TodoStatus status,
      @HiveField(7) dynamic isArchived,
      @HiveField(8) dynamic isRemoved,
      @HiveField(9) int order,
      @HiveField(10) List<Label> labels,
      @HiveField(11) String description}) = _$_Todo;
  const _Todo._() : super._();

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  int? get colour;
  @override
  @HiveField(3)
  DateTime? get dueDate;
  @override
  @HiveField(4)
  Priority get priority;
  @override
  @HiveField(5)
  String get comment;
  @override
  @HiveField(6)
  TodoStatus get status;
  @override
  @HiveField(7)
  dynamic get isArchived;
  @override
  @HiveField(8)
  dynamic get isRemoved;
  @override
  @HiveField(9)
  int get order;
  @override
  @HiveField(10)
  List<Label> get labels;
  @override
  @HiveField(11)
  String get description;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}
