import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/sginup_response.dart';
import '../models/signup_request_body.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo(this.apiService);

  Future<ApiResult<SginupResponse>> signUp(SignupRequestBody signUp) async {
    try {
      final response = await apiService.signup(signUp);
      if (response.status == true) {
        print("SignUp response success repo");
        return ApiResult.success(response);
      } else {
        print("SignUp failed repo 1: ${response.message}");
        return ApiResult.failure(ErrorHandler.handle(response.message));
      }
    } catch (e) {
      print("SignUp failed repo: ${ErrorHandler.handle(e).toString()}");
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
