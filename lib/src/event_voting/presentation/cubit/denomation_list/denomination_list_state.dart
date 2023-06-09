part of 'denomination_list_cubit.dart';

@freezed
class DenominationListState with _$DenominationListState {
  const factory DenominationListState.initial() = _Initial;

  const factory DenominationListState.loading() = _Loading;

  const factory DenominationListState.noInternet() = _NoInternet;

  const factory DenominationListState.error({required String errMessage}) = _Error;

  const factory DenominationListState.success({required ApiResponse response}) =
      _Success;
}
