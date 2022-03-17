import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../common/date_utils.dart';
import '../bloc/upcoming_bloc.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UpcomingBloc>().state;
    return TableCalendar(
      headerVisible: true,
      daysOfWeekHeight: Platform.isLinux ? 16 + 12 : 16,
      calendarFormat: state.format,
      focusedDay: state.focusedDay,
      firstDay: state.firstDay,
      lastDay: state.lastDay,
      eventLoader: (day) => state.eventMap[day.keepDayInfo()] ?? [],
      selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) =>
          context.read<UpcomingBloc>().add(
                UpcomingEvent.dateSelected(
                  selectedDay: selectedDay,
                  focusedDay: focusedDay,
                ),
              ),
      onPageChanged: (focusedDay) {
        context.read<UpcomingBloc>().add(
              UpcomingEvent.dateSelected(
                selectedDay: state.selectedDay!,
                focusedDay: focusedDay,
              ),
            );
      },
      onFormatChanged: (format) {
        if (format != state.format) {
          context
              .read<UpcomingBloc>()
              .add(UpcomingEvent.formatChanged(format: format));
        }
      },
      calendarBuilders: CalendarBuilders(
        markerBuilder: (
          context,
          day,
          events,
        ) {
          return events.isEmpty
              ? null
              : Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.6),
                      width: 1.25,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
