import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'search_todo_bloc.freezed.dart';
part 'search_todo_event.dart';
part 'search_todo_state.dart';

class SearchTodoBloc extends Bloc<SearchTodoEvent, SearchTodoState> {
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
      emit(state.copyWith(
        status: SearchTodoStatus.success,
        result: result,
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

  // TODO
  _onHistoryCleared(SearchHistory history, Emitter<SearchTodoState> emit) {}

  Future<void> _onHistorySelected(
    SearchHistory history,
    Emitter<SearchTodoState> emit,
  ) async {
    await _onKeywordChanged(history.keyword, emit);
  }

  // TODO
  _onLabelSubscriptionRequested(Emitter<SearchTodoState> emit) {}
}
