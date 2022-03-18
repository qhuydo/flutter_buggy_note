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

  factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    Todo? recentlyRemovedTodo,
  }) = _HomeState;

}