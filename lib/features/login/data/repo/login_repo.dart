import 'package:flutter_adv/core/networking/api_error_handler.dart';
import 'package:flutter_adv/core/networking/api_result.dart';
import 'package:flutter_adv/core/networking/api_service.dart';
import 'package:flutter_adv/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody login) async {
    try {
      final response = await apiService.login(login);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
