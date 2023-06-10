part of 'event_category_cubit.dart';

@freezed
class EventCategoryState with _$EventCategoryState {
  const factory EventCategoryState.initial() = _Initial;

  const factory EventCategoryState.loading() = _Loading;

  const factory EventCategoryState.noInternet() = _NoInternet;

  const factory EventCategoryState.error({required String errMessage}) = _Error;

  const factory EventCategoryState.success({required ApiResponse<List<String>> response}) =
      _Success;
}
