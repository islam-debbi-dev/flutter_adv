import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/doctros_bloc_builder.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_and_doctors_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16.h),
              const DoctorSpecialitySeeAllList(),
              verticalSpace(16.h),
              const SpecializationsBlocBuilder(),
              verticalSpace(5.h),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
