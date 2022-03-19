part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @JsonKey(ignore: true) @Default(HomeStatus.initial) HomeStatus status,
    @JsonKey(ignore: true) Todo? recentlyRemovedTodo,
    @Default(true) bool showCompletedTodo,
    @Default(ViewMode.compact) ViewMode todoViewMode,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

}