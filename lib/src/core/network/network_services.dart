import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/event_voting/data/models/request/contestant_voting_param.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';

part 'network_services.g.dart';

@RestApi()
abstract class NetworkServices {
  factory NetworkServices(Dio dio) = _NetworkServices;

  @GET(ApiEndPoints.fetchCategory)
  Future<EventListResponseModel> fetchEventCategory();

  @GET(ApiEndPoints.fetchEventsList)
  Future<EventListResponseModel> fetchEventList(
    @Header('category') String category,
  );

  @GET(ApiEndPoints.fetchDenominationList)
  Future<EventListResponseModel> fetchDenominationList(
    @Header('eventId') String eventId,
  );

  @GET(ApiEndPoints.fetchVoteHistory)
  Future<EventListResponseModel> fetchEventHistory(
    @Header('userId') String userId,
  );

  @POST(ApiEndPoints.fetchEventsList)
  Future<EventListResponseModel> postVote(
    @Field("userId") String userId,
    @Field("username") String username,
    @Field("denoId") String denoId,
    @Field("participantId") String participantId,
    @Field("count") String count,
    @Field("type") String type,
    @Field("refTransactionId") String refTransactionId,
  );
}
