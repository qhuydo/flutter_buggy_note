// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpcomingEventTearOff {
  const _$UpcomingEventTearOff();

  _UpcomingEventSubscriptionSelected subscriptionSelected() {
    return const _UpcomingEventSubscriptionSelected();
  }

  _UpcomingEventDateSelected dateSelected(
      {required DateTime selectedDay, required DateTime focusedDay}) {
    return _UpcomingEventDateSelected(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
    );
  }

  _UpcomingEventFormatChanged formatChanged({required CalendarFormat format}) {
    return _UpcomingEventFormatChanged(
      format: format,
    );
  }
}

/// @nodoc
const $UpcomingEvent = _$UpcomingEventTearOff();

/// @nodoc
mixin _$UpcomingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionSelected,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpcomingEventSubscriptionSelected value)
        subscriptionSelected,
    required TResult Function(_UpcomingEventDateSelected value) dateSelected,
    required TResult Function(_UpcomingEventFormatChanged value) formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingEventCopyWith<$Res> {
  factory $UpcomingEventCopyWith(
          UpcomingEvent value, $Res Function(UpcomingEvent) then) =
      _$UpcomingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingEventCopyWithImpl<$Res>
    implements $UpcomingEventCopyWith<$Res> {
  _$UpcomingEventCopyWithImpl(this._value, this._then);

  final UpcomingEvent _value;
  // ignore: unused_field
  final $Res Function(UpcomingEvent) _then;
}

/// @nodoc
abstract class _$UpcomingEventSubscriptionSelectedCopyWith<$Res> {
  factory _$UpcomingEventSubscriptionSelectedCopyWith(
          _UpcomingEventSubscriptionSelected value,
          $Res Function(_UpcomingEventSubscriptionSelected) then) =
      __$UpcomingEventSubscriptionSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpcomingEventSubscriptionSelectedCopyWithImpl<$Res>
    extends _$UpcomingEventCopyWithImpl<$Res>
    implements _$UpcomingEventSubscriptionSelectedCopyWith<$Res> {
  __$UpcomingEventSubscriptionSelectedCopyWithImpl(
      _UpcomingEventSubscriptionSelected _value,
      $Res Function(_UpcomingEventSubscriptionSelected) _then)
      : super(_value, (v) => _then(v as _UpcomingEventSubscriptionSelected));

  @override
  _UpcomingEventSubscriptionSelected get _value =>
      super._value as _UpcomingEventSubscriptionSelected;
}

/// @nodoc

class _$_UpcomingEventSubscriptionSelected
    implements _UpcomingEventSubscriptionSelected {
  const _$_UpcomingEventSubscriptionSelected();

  @override
  String toString() {
    return 'UpcomingEvent.subscriptionSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcomingEventSubscriptionSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionSelected,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return subscriptionSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return subscriptionSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (subscriptionSelected != null) {
      return subscriptionSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpcomingEventSubscriptionSelected value)
        subscriptionSelected,
    required TResult Function(_UpcomingEventDateSelected value) dateSelected,
    required TResult Function(_UpcomingEventFormatChanged value) formatChanged,
  }) {
    return subscriptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
  }) {
    return subscriptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (subscriptionSelected != null) {
      return subscriptionSelected(this);
    }
    return orElse();
  }
}

abstract class _UpcomingEventSubscriptionSelected implements UpcomingEvent {
  const factory _UpcomingEventSubscriptionSelected() =
      _$_UpcomingEventSubscriptionSelected;
}

/// @nodoc
abstract class _$UpcomingEventDateSelectedCopyWith<$Res> {
  factory _$UpcomingEventDateSelectedCopyWith(_UpcomingEventDateSelected value,
          $Res Function(_UpcomingEventDateSelected) then) =
      __$UpcomingEventDateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime selectedDay, DateTime focusedDay});
}

/// @nodoc
class __$UpcomingEventDateSelectedCopyWithImpl<$Res>
    extends _$UpcomingEventCopyWithImpl<$Res>
    implements _$UpcomingEventDateSelectedCopyWith<$Res> {
  __$UpcomingEventDateSelectedCopyWithImpl(_UpcomingEventDateSelected _value,
      $Res Function(_UpcomingEventDateSelected) _then)
      : super(_value, (v) => _then(v as _UpcomingEventDateSelected));

  @override
  _UpcomingEventDateSelected get _value =>
      super._value as _UpcomingEventDateSelected;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_UpcomingEventDateSelected(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UpcomingEventDateSelected implements _UpcomingEventDateSelected {
  const _$_UpcomingEventDateSelected(
      {required this.selectedDay, required this.focusedDay});

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'UpcomingEvent.dateSelected(selectedDay: $selectedDay, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcomingEventDateSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay));

  @JsonKey(ignore: true)
  @override
  _$UpcomingEventDateSelectedCopyWith<_UpcomingEventDateSelected>
      get copyWith =>
          __$UpcomingEventDateSelectedCopyWithImpl<_UpcomingEventDateSelected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionSelected,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return dateSelected(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return dateSelected?.call(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(selectedDay, focusedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpcomingEventSubscriptionSelected value)
        subscriptionSelected,
    required TResult Function(_UpcomingEventDateSelected value) dateSelected,
    required TResult Function(_UpcomingEventFormatChanged value) formatChanged,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _UpcomingEventDateSelected implements UpcomingEvent {
  const factory _UpcomingEventDateSelected(
      {required DateTime selectedDay,
      required DateTime focusedDay}) = _$_UpcomingEventDateSelected;

  DateTime get selectedDay;
  DateTime get focusedDay;
  @JsonKey(ignore: true)
  _$UpcomingEventDateSelectedCopyWith<_UpcomingEventDateSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpcomingEventFormatChangedCopyWith<$Res> {
  factory _$UpcomingEventFormatChangedCopyWith(
          _UpcomingEventFormatChanged value,
          $Res Function(_UpcomingEventFormatChanged) then) =
      __$UpcomingEventFormatChangedCopyWithImpl<$Res>;
  $Res call({CalendarFormat format});
}

/// @nodoc
class __$UpcomingEventFormatChangedCopyWithImpl<$Res>
    extends _$UpcomingEventCopyWithImpl<$Res>
    implements _$UpcomingEventFormatChangedCopyWith<$Res> {
  __$UpcomingEventFormatChangedCopyWithImpl(_UpcomingEventFormatChanged _value,
      $Res Function(_UpcomingEventFormatChanged) _then)
      : super(_value, (v) => _then(v as _UpcomingEventFormatChanged));

  @override
  _UpcomingEventFormatChanged get _value =>
      super._value as _UpcomingEventFormatChanged;

  @override
  $Res call({
    Object? format = freezed,
  }) {
    return _then(_UpcomingEventFormatChanged(
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
    ));
  }
}

/// @nodoc

class _$_UpcomingEventFormatChanged implements _UpcomingEventFormatChanged {
  const _$_UpcomingEventFormatChanged({required this.format});

  @override
  final CalendarFormat format;

  @override
  String toString() {
    return 'UpcomingEvent.formatChanged(format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcomingEventFormatChanged &&
            const DeepCollectionEquality().equals(other.format, format));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(format));

  @JsonKey(ignore: true)
  @override
  _$UpcomingEventFormatChangedCopyWith<_UpcomingEventFormatChanged>
      get copyWith => __$UpcomingEventFormatChangedCopyWithImpl<
          _UpcomingEventFormatChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptionSelected,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        dateSelected,
    required TResult Function(CalendarFormat format) formatChanged,
  }) {
    return formatChanged(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
  }) {
    return formatChanged?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptionSelected,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? dateSelected,
    TResult Function(CalendarFormat format)? formatChanged,
    required TResult orElse(),
  }) {
    if (formatChanged != null) {
      return formatChanged(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpcomingEventSubscriptionSelected value)
        subscriptionSelected,
    required TResult Function(_UpcomingEventDateSelected value) dateSelected,
    required TResult Function(_UpcomingEventFormatChanged value) formatChanged,
  }) {
    return formatChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
  }) {
    return formatChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpcomingEventSubscriptionSelected value)?
        subscriptionSelected,
    TResult Function(_UpcomingEventDateSelected value)? dateSelected,
    TResult Function(_UpcomingEventFormatChanged value)? formatChanged,
    required TResult orElse(),
  }) {
    if (formatChanged != null) {
      return formatChanged(this);
    }
    return orElse();
  }
}

abstract class _UpcomingEventFormatChanged implements UpcomingEvent {
  const factory _UpcomingEventFormatChanged({required CalendarFormat format}) =
      _$_UpcomingEventFormatChanged;

  CalendarFormat get format;
  @JsonKey(ignore: true)
  _$UpcomingEventFormatChangedCopyWith<_UpcomingEventFormatChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpcomingStateTearOff {
  const _$UpcomingStateTearOff();

  _UpcomingState call(
      {UpcomingStatus status = UpcomingStatus.initial,
      required CalendarFormat format,
      required DateTime focusedDay,
      DateTime? selectedDay,
      required DateTime firstDay,
      required DateTime lastDay,
      Map<DateTime, List<Todo>> eventMap = const {}}) {
    return _UpcomingState(
      status: status,
      format: format,
      focusedDay: focusedDay,
      selectedDay: selectedDay,
      firstDay: firstDay,
      lastDay: lastDay,
      eventMap: eventMap,
    );
  }
}

/// @nodoc
const $UpcomingState = _$UpcomingStateTearOff();

/// @nodoc
mixin _$UpcomingState {
  UpcomingStatus get status => throw _privateConstructorUsedError;
  CalendarFormat get format => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  DateTime get firstDay => throw _privateConstructorUsedError;
  DateTime get lastDay => throw _privateConstructorUsedError;
  Map<DateTime, List<Todo>> get eventMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpcomingStateCopyWith<UpcomingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingStateCopyWith<$Res> {
  factory $UpcomingStateCopyWith(
          UpcomingState value, $Res Function(UpcomingState) then) =
      _$UpcomingStateCopyWithImpl<$Res>;
  $Res call(
      {UpcomingStatus status,
      CalendarFormat format,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime firstDay,
      DateTime lastDay,
      Map<DateTime, List<Todo>> eventMap});
}

/// @nodoc
class _$UpcomingStateCopyWithImpl<$Res>
    implements $UpcomingStateCopyWith<$Res> {
  _$UpcomingStateCopyWithImpl(this._value, this._then);

  final UpcomingState _value;
  // ignore: unused_field
  final $Res Function(UpcomingState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? format = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? firstDay = freezed,
    Object? lastDay = freezed,
    Object? eventMap = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpcomingStatus,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstDay: firstDay == freezed
          ? _value.firstDay
          : firstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastDay: lastDay == freezed
          ? _value.lastDay
          : lastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventMap: eventMap == freezed
          ? _value.eventMap
          : eventMap // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ));
  }
}

/// @nodoc
abstract class _$UpcomingStateCopyWith<$Res>
    implements $UpcomingStateCopyWith<$Res> {
  factory _$UpcomingStateCopyWith(
          _UpcomingState value, $Res Function(_UpcomingState) then) =
      __$UpcomingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UpcomingStatus status,
      CalendarFormat format,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime firstDay,
      DateTime lastDay,
      Map<DateTime, List<Todo>> eventMap});
}

/// @nodoc
class __$UpcomingStateCopyWithImpl<$Res>
    extends _$UpcomingStateCopyWithImpl<$Res>
    implements _$UpcomingStateCopyWith<$Res> {
  __$UpcomingStateCopyWithImpl(
      _UpcomingState _value, $Res Function(_UpcomingState) _then)
      : super(_value, (v) => _then(v as _UpcomingState));

  @override
  _UpcomingState get _value => super._value as _UpcomingState;

  @override
  $Res call({
    Object? status = freezed,
    Object? format = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? firstDay = freezed,
    Object? lastDay = freezed,
    Object? eventMap = freezed,
  }) {
    return _then(_UpcomingState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpcomingStatus,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      firstDay: firstDay == freezed
          ? _value.firstDay
          : firstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastDay: lastDay == freezed
          ? _value.lastDay
          : lastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventMap: eventMap == freezed
          ? _value.eventMap
          : eventMap // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ));
  }
}

/// @nodoc

class _$_UpcomingState extends _UpcomingState {
  const _$_UpcomingState(
      {this.status = UpcomingStatus.initial,
      required this.format,
      required this.focusedDay,
      this.selectedDay,
      required this.firstDay,
      required this.lastDay,
      this.eventMap = const {}})
      : super._();

  @JsonKey()
  @override
  final UpcomingStatus status;
  @override
  final CalendarFormat format;
  @override
  final DateTime focusedDay;
  @override
  final DateTime? selectedDay;
  @override
  final DateTime firstDay;
  @override
  final DateTime lastDay;
  @JsonKey()
  @override
  final Map<DateTime, List<Todo>> eventMap;

  @override
  String toString() {
    return 'UpcomingState(status: $status, format: $format, focusedDay: $focusedDay, selectedDay: $selectedDay, firstDay: $firstDay, lastDay: $lastDay, eventMap: $eventMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcomingState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality().equals(other.firstDay, firstDay) &&
            const DeepCollectionEquality().equals(other.lastDay, lastDay) &&
            const DeepCollectionEquality().equals(other.eventMap, eventMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(firstDay),
      const DeepCollectionEquality().hash(lastDay),
      const DeepCollectionEquality().hash(eventMap));

  @JsonKey(ignore: true)
  @override
  _$UpcomingStateCopyWith<_UpcomingState> get copyWith =>
      __$UpcomingStateCopyWithImpl<_UpcomingState>(this, _$identity);
}

abstract class _UpcomingState extends UpcomingState {
  const factory _UpcomingState(
      {UpcomingStatus status,
      required CalendarFormat format,
      required DateTime focusedDay,
      DateTime? selectedDay,
      required DateTime firstDay,
      required DateTime lastDay,
      Map<DateTime, List<Todo>> eventMap}) = _$_UpcomingState;
  const _UpcomingState._() : super._();

  @override
  UpcomingStatus get status;
  @override
  CalendarFormat get format;
  @override
  DateTime get focusedDay;
  @override
  DateTime? get selectedDay;
  @override
  DateTime get firstDay;
  @override
  DateTime get lastDay;
  @override
  Map<DateTime, List<Todo>> get eventMap;
  @override
  @JsonKey(ignore: true)
  _$UpcomingStateCopyWith<_UpcomingState> get copyWith =>
      throw _privateConstructorUsedError;
}
