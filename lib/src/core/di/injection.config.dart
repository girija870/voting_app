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
import 'package:voting_app/src/core/di/register_modules.dart' as _i16;
import 'package:voting_app/src/core/helpers/internet_info_helper.dart' as _i5;
import 'package:voting_app/src/core/network/network_services.dart' as _i6;
import 'package:voting_app/src/event_voting/data/repositories/event_voting_repository_impl.dart'
    as _i9;
import 'package:voting_app/src/event_voting/data/source/event_voting_remote_source.dart'
    as _i7;
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart'
    as _i8;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_denomination_list_use_case.dart'
    as _i10;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_category_use_case.dart'
    as _i11;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_event_list_use_case.dart'
    as _i12;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_group_list_use_case.dart'
    as _i13;
import 'package:voting_app/src/event_voting/domain/use_cases/fetch_vote_history_use_case.dart'
    as _i14;
import 'package:voting_app/src/event_voting/domain/use_cases/post_vote_use_case.dart'
    as _i15;

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
    gh.lazySingleton<_i5.InternetInfo>(
        () => _i5.InternetInfoImpl(gh<_i3.Connectivity>()));
    gh.lazySingleton<_i6.NetworkServices>(() => registerModule.networkServices);
    gh.lazySingleton<_i7.EventVotingRemoteSource>(
        () => _i7.EventVotingRemoteSourceImpl(
              gh<_i4.Dio>(),
              gh<_i6.NetworkServices>(),
            ));
    gh.lazySingleton<_i8.EventVotingRepository>(
        () => _i9.EventVotingRepositoryImpl(
              gh<_i5.InternetInfo>(),
              gh<_i7.EventVotingRemoteSource>(),
            ));
    gh.lazySingleton<_i10.FetchDenominationListUseCase>(() =>
        _i10.FetchDenominationListUseCase(gh<_i8.EventVotingRepository>()));
    gh.lazySingleton<_i11.FetchEventCategoryUseCase>(
        () => _i11.FetchEventCategoryUseCase(gh<_i8.EventVotingRepository>()));
    gh.lazySingleton<_i12.FetchEventListUseCase>(
        () => _i12.FetchEventListUseCase(gh<_i8.EventVotingRepository>()));
    gh.lazySingleton<_i13.FetchGroupListUseCase>(
        () => _i13.FetchGroupListUseCase(gh<_i8.EventVotingRepository>()));
    gh.lazySingleton<_i14.FetchVoteHistoryUseCase>(
        () => _i14.FetchVoteHistoryUseCase(gh<_i8.EventVotingRepository>()));
    gh.lazySingleton<_i15.PostVoteUseCase>(
        () => _i15.PostVoteUseCase(gh<_i8.EventVotingRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
