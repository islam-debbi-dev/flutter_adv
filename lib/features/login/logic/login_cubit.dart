import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_adv/features/login/data/repo/login_repo.dart';
import 'package:flutter_adv/features/login/logic/login_state.dart';

import '../data/models/login_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // emit login
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final resp = await loginRepo.login(loginRequestBody);

    resp.when(
      success: (LoginResponse) => emit(LoginState.success(LoginResponse)),
      failure: (error) => emit(
        LoginState.failure(error.apiErrorModel.message ?? " "),
      ),
    );
  }
}
