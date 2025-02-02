import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/spacing.dart';
import 'package:flutter_adv/core/theming/styles.dart';
import 'package:flutter_adv/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
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
                          onPressed: () {}),
                      verticalSpace(40),
                      const AppTextDivider(),
                      verticalSpace(40),
                      /* SocialButton(
                        svgPath: 'assets/images/google_icon.svg',
                        onPressed: () {
                          print("Google button pressed");
                        },
                      ), */
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
