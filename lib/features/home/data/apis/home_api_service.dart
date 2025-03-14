import 'package:dio/dio.dart';
import 'package:flutter_adv/features/home/data/apis/home_api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_Constants.dart';
import '../models/specializations_response_model.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specialization)
  Future<SpecializationsResponseModel> getSpecializations();
}
