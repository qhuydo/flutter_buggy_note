// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      title: json['title'] as String,
      id: json['id'] as String,
      colour: json['colour'] as int?,
      dueDate: json['dueDate'] as int?,
      priority: json['priority'] as int? ?? 0,
      comment: json['comment'] as String? ?? '',
      status: $enumDecodeNullable(_$TodoStatusEnumMap, json['status']) ??
          TodoStatus.pending,
      isArchived: json['isArchived'] ?? false,
      isRemoved: json['isRemoved'] ?? false,
      order: json['order'] as int? ?? 0,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => Label.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'colour': instance.colour,
      'dueDate': instance.dueDate,
      'priority': instance.priority,
      'comment': instance.comment,
      'status': _$TodoStatusEnumMap[instance.status],
      'isArchived': instance.isArchived,
      'isRemoved': instance.isRemoved,
      'order': instance.order,
      'labels': instance.labels,
    };

const _$TodoStatusEnumMap = {
  TodoStatus.pending: 'pending',
  TodoStatus.completed: 'completed',
};
