// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_todo_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchTodoState _$$_SearchTodoStateFromJson(Map<String, dynamic> json) =>
    _$_SearchTodoState(
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => SearchHistory.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$_SearchTodoStateToJson(_$_SearchTodoState instance) =>
    <String, dynamic>{
      'history': instance.history.toList(),
    };
