import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
import 'package:voting_app/src/core/network/api_endpoints.dart';
import 'package:voting_app/src/event_voting/data/models/response/event_list_response_model.dart';

part 'network_services.g.dart';

@RestApi()
abstract class NetworkServices {
  factory NetworkServices(Dio dio) = _NetworkServices;

  @GET(ApiEndPoints.fetchEventsList)
  Future<EventListResponseModel> fetchEventList(
    @Header('category') String category,
  );
}
