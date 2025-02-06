import 'package:flutter_adv/core/networking/api_Constants.dart';
import 'package:flutter_adv/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
