import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
class TodoFailure with _$TodoFailure implements Exception {
  factory TodoFailure.notFound() = _$TodoNotFoundFailure;
  factory TodoFailure.empty() = _$TodoEmptyFailure;
}