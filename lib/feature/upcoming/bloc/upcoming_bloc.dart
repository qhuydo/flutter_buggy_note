import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'upcoming_bloc.freezed.dart';

part 'upcoming_event.dart';

part 'upcoming_state.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  final TodoRepository _todoRepository;

  UpcomingBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(
          UpcomingState(
            focusedDay: UpcomingState.getDefaultFocusedDay(),
            firstDay: UpcomingState.defaultFirstDay,
            lastDay: UpcomingState.defaultLastDay,
          ),
        ) {
    on<UpcomingEvent>((event, emit) async {
      await event.when(
        subscriptionSelected: () async => await _onSubscriptionSelected(emit),
        dateSelected: (selectedDay, focusedDay) async => await _onDateSelected(
          selectedDay,
          focusedDay,
          emit,
        ),
        formatChanged: (format) async => await _onFormatChanged(format, emit),
      );
    });
  }

  Future<void> _onSubscriptionSelected(Emitter<UpcomingState> emit) async {
    emit(state.copyWith(status: UpcomingStatus.loading));
    await emit.forEach<Map<DateTime, List<Todo>>>(_todoRepository.getEventMap(),
        onData: (eventMap) => state.copyWith(
              status: UpcomingStatus.success,
              eventMap: eventMap,
            ),
        onError: (_, __) => state.copyWith(
              status: UpcomingStatus.failure,
            ));
  }

  Future<void> _onDateSelected(
    DateTime selectedDay,
    DateTime focusedDay,
    Emitter<UpcomingState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDay: selectedDay,
        focusedDay: focusedDay,
      ),
    );
  }

  Future<void> _onFormatChanged(
    CalendarFormat format,
    Emitter<UpcomingState> emit,
  ) async {
    emit(state.copyWith(format: format));
  }
}
