part of 'event_list_cubit.dart';

@freezed
class EventListState with _$EventListState {
  const factory EventListState.initial() = _Initial;

  const factory EventListState.loading() = _Loading;

  const factory EventListState.noInternet() = _NoInternet;

  const factory EventListState.error({required String errMessage}) = _Error;

  const factory EventListState.success({required ApiResponse<EventListResponseModel> response}) =
  _Success;
}
