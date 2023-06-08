import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class EventVotingRemoteSource {
  Future<ResponseBody> fetchEventList();
}

@LazySingleton(as: EventVotingRemoteSource)
class EventVotingRemoteSourceImpl implements EventVotingRemoteSource {
  @override
  Future<ResponseBody> fetchEventList() {
    // TODO: implement fetchEventList
    throw UnimplementedError();
  }
}
