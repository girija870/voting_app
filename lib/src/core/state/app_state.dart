import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState<T> with _$AppState<T> {
  const factory AppState.initial() = AppStateInitial;

  const factory AppState.loading() = AppStateLoading;

  const factory AppState.noInternet() = AppStateInternet;

  const factory AppState.error({
    required String message,
  }) = AppStateError;

  const factory AppState.success({required T data}) = AppStateSuccess;
}
