// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:voting_app/src/core/di/register_modules.dart' as _i15;
import 'package:voting_app/src/core/helpers/internet_info_helper.dart' as _i6;
import 'package:voting_app/src/event_voting/data/repositories/event_voting_repository_impl.dart'
    as _i8;
import 'package:voting_app/src/event_voting/data/source/event_voting_remote_source.dart'
    as _i5;
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart'
    as _i7;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_denomination_list_use_case.dart'
    as _i9;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart'
    as _i10;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart'
    as _i11;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_vote_history_use_case.dart'
    as _i12;
import 'package:voting_app/src/event_voting/domain/use_cases/post_vote_use_case.dart'
    as _i13;
import 'package:voting_app/src/event_voting/presentation/cubit/denomation_list/denomination_list_cubit.dart'
    as _i14;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i4.Dio>(() => registerModule.authenticatedDio);
    gh.lazySingleton<_i5.EventVotingRemoteSource>(
        () => _i5.EventVotingRemoteSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i6.InternetInfo>(
        () => _i6.InternetInfoImpl(gh<_i3.Connectivity>()));
    gh.lazySingleton<_i7.EventVotingRepository>(
        () => _i8.EventVotingRepositoryImpl(
              gh<_i6.InternetInfo>(),
              gh<_i5.EventVotingRemoteSource>(),
            ));
    gh.lazySingleton<_i9.FetchDenominationListUseCase>(() =>
        _i9.FetchDenominationListUseCase(gh<_i7.EventVotingRepository>()));
    gh.lazySingleton<_i10.FetchEventCategoryUseCase>(
        () => _i10.FetchEventCategoryUseCase(gh<_i7.EventVotingRepository>()));
    gh.lazySingleton<_i11.FetchEventListUseCase>(
        () => _i11.FetchEventListUseCase(gh<_i7.EventVotingRepository>()));
    gh.lazySingleton<_i12.FetchVoteHistoryUseCase>(
        () => _i12.FetchVoteHistoryUseCase(gh<_i7.EventVotingRepository>()));
    gh.lazySingleton<_i13.PostVoteUseCase>(
        () => _i13.PostVoteUseCase(gh<_i7.EventVotingRepository>()));
    gh.factory<_i14.DenominationListCubit>(() =>
        _i14.DenominationListCubit(gh<_i9.FetchDenominationListUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
