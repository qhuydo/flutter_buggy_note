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
      {required String title,
      required int id,
      int? colour,
      int? dueDate,
      int priority = 0,
      String comment = '',
      TodoStatus status = TodoStatus.pending,
      List<String> tagList = const [],
      dynamic isArchived = false,
      dynamic isRemoved = false,
      int order = 0}) {
    return _Todo(
      title: title,
      id: id,
      colour: colour,
      dueDate: dueDate,
      priority: priority,
      comment: comment,
      status: status,
      tagList: tagList,
      isArchived: isArchived,
      isRemoved: isRemoved,
      order: order,
    );
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int? get colour => throw _privateConstructorUsedError;
  int? get dueDate => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;
  List<String> get tagList => throw _privateConstructorUsedError;
  dynamic get isArchived => throw _privateConstructorUsedError;
  dynamic get isRemoved => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int id,
      int? colour,
      int? dueDate,
      int priority,
      String comment,
      TodoStatus status,
      List<String> tagList,
      dynamic isArchived,
      dynamic isRemoved,
      int order});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? colour = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? tagList = freezed,
    Object? isArchived = freezed,
    Object? isRemoved = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      tagList: tagList == freezed
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int id,
      int? colour,
      int? dueDate,
      int priority,
      String comment,
      TodoStatus status,
      List<String> tagList,
      dynamic isArchived,
      dynamic isRemoved,
      int order});
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
    Object? title = freezed,
    Object? id = freezed,
    Object? colour = freezed,
    Object? dueDate = freezed,
    Object? priority = freezed,
    Object? comment = freezed,
    Object? status = freezed,
    Object? tagList = freezed,
    Object? isArchived = freezed,
    Object? isRemoved = freezed,
    Object? order = freezed,
  }) {
    return _then(_Todo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      colour: colour == freezed
          ? _value.colour
          : colour // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      tagList: tagList == freezed
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isArchived: isArchived == freezed ? _value.isArchived : isArchived,
      isRemoved: isRemoved == freezed ? _value.isRemoved : isRemoved,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Todo implements _Todo {
  _$_Todo(
      {required this.title,
      required this.id,
      this.colour,
      this.dueDate,
      this.priority = 0,
      this.comment = '',
      this.status = TodoStatus.pending,
      this.tagList = const [],
      this.isArchived = false,
      this.isRemoved = false,
      this.order = 0});

  @override
  final String title;
  @override
  final int id;
  @override
  final int? colour;
  @override
  final int? dueDate;
  @JsonKey()
  @override
  final int priority;
  @JsonKey()
  @override
  final String comment;
  @JsonKey()
  @override
  final TodoStatus status;
  @JsonKey()
  @override
  final List<String> tagList;
  @JsonKey()
  @override
  final dynamic isArchived;
  @JsonKey()
  @override
  final dynamic isRemoved;
  @JsonKey()
  @override
  final int order;

  @override
  String toString() {
    return 'Todo(title: $title, id: $id, colour: $colour, dueDate: $dueDate, priority: $priority, comment: $comment, status: $status, tagList: $tagList, isArchived: $isArchived, isRemoved: $isRemoved, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.colour, colour) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.tagList, tagList) &&
            const DeepCollectionEquality()
                .equals(other.isArchived, isArchived) &&
            const DeepCollectionEquality().equals(other.isRemoved, isRemoved) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(colour),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(tagList),
      const DeepCollectionEquality().hash(isArchived),
      const DeepCollectionEquality().hash(isRemoved),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo implements Todo {
  factory _Todo(
      {required String title,
      required int id,
      int? colour,
      int? dueDate,
      int priority,
      String comment,
      TodoStatus status,
      List<String> tagList,
      dynamic isArchived,
      dynamic isRemoved,
      int order}) = _$_Todo;

  @override
  String get title;
  @override
  int get id;
  @override
  int? get colour;
  @override
  int? get dueDate;
  @override
  int get priority;
  @override
  String get comment;
  @override
  TodoStatus get status;
  @override
  List<String> get tagList;
  @override
  dynamic get isArchived;
  @override
  dynamic get isRemoved;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}
