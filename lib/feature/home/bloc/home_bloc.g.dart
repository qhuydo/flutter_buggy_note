// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      showCompletedTodo: json['showCompletedTodo'] as bool? ?? true,
      todoViewMode:
          $enumDecodeNullable(_$ViewModeEnumMap, json['todoViewMode']) ??
              ViewMode.compact,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'showCompletedTodo': instance.showCompletedTodo,
      'todoViewMode': _$ViewModeEnumMap[instance.todoViewMode],
    };

const _$ViewModeEnumMap = {
  ViewMode.compact: 'compact',
  ViewMode.card: 'card',
};
