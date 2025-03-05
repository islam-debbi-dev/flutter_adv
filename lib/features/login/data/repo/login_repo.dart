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
      if (response.status == true) {
        print("Login response success repo");
        return ApiResult.success(response);
      } else {
        print("Login failed repo 1: ${response.message}");
        return ApiResult.failure(ErrorHandler.handle(response.message));
      }
    } catch (e) {
      print("Login failed repo: ${ErrorHandler.handle(e).toString()}");
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
