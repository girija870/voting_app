import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/data/models/response/api_response.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_denomination_list_use_case.dart';

part 'denomination_list_state.dart';

part 'denomination_list_cubit.freezed.dart';

@injectable
class DenominationListCubit extends Cubit<DenominationListState> {
  DenominationListCubit(this._useCase)
      : super(const DenominationListState.initial());

  final FetchDenominationListUseCase _useCase;

  Future<void> fetchDenominationList(String eventId) async {
    emit(const DenominationListState.loading());
    emit((await _useCase.execute(eventId)).fold(
        (failure) => failure.when(
            serverError: (errMessage) =>
                DenominationListState.error(errMessage: errMessage),
            noInternet: DenominationListState.noInternet),
        (data) => DenominationListState.success(response: data)));
  }
}
