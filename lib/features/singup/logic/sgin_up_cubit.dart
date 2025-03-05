import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/signup_request_body.dart';
import '../data/repos/sign_up_repo.dart';
import 'sgin_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signupRepo;
  SignUpCubit(this._signupRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.SignupLoading());
    final response = await _signupRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) {
      emit(SignUpState.SignupSuccess(signupResponse));
    }, failure: (error) {
      emit(SignUpState.SignupError(message: error.apiErrorModel.message ?? ''));
    });
  }
}
