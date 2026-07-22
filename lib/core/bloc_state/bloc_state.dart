import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/api/failure/fail.dart';
part 'bloc_state.freezed.dart';

@freezed
sealed class ApiState<T> with _$ApiState<T> {
  const factory ApiState.failed([String? message, Failure? errorType]) =
      FailedState;

  const factory ApiState.success(
    T data, {
    bool? refresh,
    @Default(true) bool hasReachedMax,
    @Default(0) int page, //count
    // @Default(0) int count,//count
    // bool? hasReachedMax = false,
    FormzSubmissionStatus? status,
    String? error,
  }) = SuccessState<T>;
  const factory ApiState.load() = LoadState;
  const factory ApiState.initial() = InitialState;
}

@freezed
sealed class ApiStateOther<T> with _$ApiStateOther<T> {
  const factory ApiStateOther.failed([String? message, Failure? errorType]) =
      FailedStateOther;
  const factory ApiStateOther.success(
    T data, {
    bool? refresh,
    FormzSubmissionStatus? status,
    String? error,
  }) = SuccessStateOther<T>;
  const factory ApiStateOther.load() = LoadStateOther;
  const factory ApiStateOther.initial() = InitialStateOther;
}

@freezed
sealed class ApiEvent with _$ApiEvent {
  const factory ApiEvent.fetch([String? nd, bool? refresh]) = FetchApiEvent;
}

@freezed
sealed class ApiEventHistoryDebit with _$ApiEventHistoryDebit {
  const factory ApiEventHistoryDebit.fetch(
    String nd,
    String source,
    bool refresh,
  ) = FetchApiEventHistoryDebit;
}
