import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adv/core/networking/api_result.dart';
import 'package:flutter_adv/features/login/data/repo/login_repo.dart';
import 'package:flutter_adv/features/login/logic/login_state.dart';

import '../data/models/login_request_body.dart';
import '../data/models/login_response.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial()) {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  // emit login
  void Login() async {
    emit(const LoginState.loading());
    final resp = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    resp.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        print(
            "Login failed: ${error.apiErrorModel.message}"); // Add this line to log failure
        emit(LoginState.failure(error.apiErrorModel.message ?? " "));
      },
    );
  }

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) {
      // await saveUserToken(loginResponse.userData?.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(error.apiErrorModel.message ?? ''));
    });
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
