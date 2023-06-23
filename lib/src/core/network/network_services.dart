import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/event_voting/data/models/response/category/category_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/denomination/denomination_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list/event_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/group_list/group_list_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/history/event_history_response_model.dart';
import 'package:voting_app/src/event_voting/data/models/response/post_vote/post_vote_response_model.dart';

part 'network_services.g.dart';

@RestApi()
abstract class NetworkServices {
  factory NetworkServices(Dio dio) = _NetworkServices;

  @GET(ApiEndPoints.fetchCategory)
  Future<CategoryResponseModel> fetchEventCategory();

  @GET(ApiEndPoints.fetchEventsList)
  Future<EventListResponseModel> fetchEventList(
    @Header('category') String category,
    @Query('search') String? search,
  );

  @GET(ApiEndPoints.fetchGroupList)
  Future<GroupListResponseModel> fetchGroupList(
    @Header('eventId') String eventId,
  );

  @GET(ApiEndPoints.fetchDenominationList)
  Future<DenominationResponseModel> fetchDenominationList(
    @Header('eventId') String eventId,
  );

  @GET(ApiEndPoints.fetchVoteHistory)
  Future<EventHistoryResponseModel> fetchEventHistory(
    @Header('username') String userId,
  );

  @POST(ApiEndPoints.postVote)
  Future<PostVoteResponseModel> postVote(
    @Field("userId") String userId,
    @Field("username") String username,
    @Field("denoId") String denoId,
    @Field("participantId") String participantId,
    @Field("count") int count,
    @Field("type") String type,
    @Field("refTransactionId") String refTransactionId,
  );
}
