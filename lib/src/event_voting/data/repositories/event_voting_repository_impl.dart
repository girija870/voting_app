import 'package:injectable/injectable.dart';
import 'package:voting_app/src/event_voting/domain/repositories/event_voting_repository.dart';

@LazySingleton(as: EventVotingRepository)
class EventVotingRepositoryImpl implements EventVotingRepository {}
