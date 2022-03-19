import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'search_todo_bloc.freezed.dart';

part 'search_todo_bloc.g.dart';

part 'search_todo_event.dart';

part 'search_todo_state.dart';

class SearchTodoBloc extends HydratedBloc<SearchTodoEvent, SearchTodoState> {
  final TodoRepository _todoRepository;

  SearchTodoBloc({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(const SearchTodoState()) {
    on<SearchTodoEvent>((event, emit) async {
      await event.when(
        subscriptionRequested: () async => await _onSubscriptionRequested(emit),
        submitted: () async => await _onSubmitted(emit),
        keywordChanged: (keyword) async =>
            await _onKeywordChanged(keyword, emit),
        searchOptionCleared: () async => await _onSearchOptionCleared(emit),
        filterOptionCleared: () async => await _onFilterOptionCleared(emit),
        historyCleared: (history) async =>
            await _onHistoryCleared(history, emit),
        historySelected: (history) async =>
            await _onHistorySelected(history, emit),
        labelSubscriptionRequested: () async =>
            await _onLabelSubscriptionRequested(emit),
      );
    });
  }

  Future<void> _onSubscriptionRequested(Emitter<SearchTodoState> emit) async {
    // TODO
    emit(state.copyWith(status: SearchTodoStatus.loading));
    await emit.forEach<List<Todo>>(
      _todoRepository.getTodos(),
      onData: (todos) {
        if (state.status == SearchTodoStatus.success) {
          final result = todos
              .where(
                (element) => state.searchOption.match(element),
              )
              .toList();
          return state.copyWith(
            result: result,
          );
        }
        return state;
      },
    );
  }

  Future<void> _onSubmitted(Emitter<SearchTodoState> emit) async {
    emit(state.copyWith(status: SearchTodoStatus.loading));
    try {
      final result = await _todoRepository.search(state.searchOption);
      var history = state.history;
      if (state.searchOption.keyword.isNotEmpty) {
        history = {
          SearchHistory(
            keyword: state.searchOption.keyword,
          ),
          ...state.history,
        };
      }
      emit(state.copyWith(
        status: SearchTodoStatus.success,
        result: result,
        history: history,
      ));
    } catch (e) {
      emit(state.copyWith(status: SearchTodoStatus.failure));
    }
  }

  Future<void> _onKeywordChanged(
    String keyword,
    Emitter<SearchTodoState> emit,
  ) async {
    emit(state.copyWith(
      searchOption: state.searchOption.copyWith(keyword: keyword),
    ));
  }

  Future<void> _onSearchOptionCleared(Emitter<SearchTodoState> emit) async {
    emit(state.copyWith(searchOption: const SearchOption()));
  }

  Future<void> _onFilterOptionCleared(Emitter<SearchTodoState> emit) async {
    emit(state.copyWith(
      searchOption: const SearchOption().copyWith(
        // keep the current keyword
        keyword: state.searchOption.keyword,
      ),
    ));
  }

  Future<void> _onHistoryCleared(
    SearchHistory history,
    Emitter<SearchTodoState> emit,
  ) async {
    emit(
      state.copyWith(
        history: state.history.where((element) => element != history).toSet(),
      ),
    );
  }

  Future<void> _onHistorySelected(
    SearchHistory history,
    Emitter<SearchTodoState> emit,
  ) async {
    await _onKeywordChanged(history.keyword, emit);
    add(const SearchTodoEvent.submitted());
  }

  // TODO
  _onLabelSubscriptionRequested(Emitter<SearchTodoState> emit) {}

  @override
  SearchTodoState? fromJson(Map<String, dynamic> json) {
    return SearchTodoState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SearchTodoState state) {
    return state.toJson();
  }
}
