import 'package:flutter/material.dart';
import 'package:flutter_adv/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 20.h,
          ),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 10.h),
              const DoctorImageAndText(),
              Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font10GrayRegular,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const GetStartedButton(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
