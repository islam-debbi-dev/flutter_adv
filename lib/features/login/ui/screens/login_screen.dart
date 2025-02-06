import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/spacing.dart';
import 'package:flutter_adv/core/theming/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_divider.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/login_cubit.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(35),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forget Passwoer ?',
                        style: TextStyles.font12BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                        verticalPadding: 11,
                        buttonText: 'Login',
                        textStyle: TextStyles.font16whiteSemibold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        }),
                    verticalSpace(40),
                    const AppTextDivider(),
                    verticalSpace(40),
                    // TermAndConditionsText(),
                    verticalSpace(40),
                    //const AleadyHaveAnAccount(),
                    verticalSpace(40),
                    const LoginBlocListener(),

                    /* SocialButton(
                      svgPath: 'assets/images/google_icon.svg',
                      onPressed: () {
                        print("Google button pressed");
                      },
                    ), */
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(LoginRequestBody(
        username: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text));
  }
}
