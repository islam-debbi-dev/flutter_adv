import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctor_speciality_list_view.dart';
import 'widgets/doctor_speciality_see_all_list.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/recommendation_doctor_see_all_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16.h),
              const DoctorSpecialitySeeAllList(),
              verticalSpace(16.h),
              const DoctorSpecialityListView(),
              verticalSpace(16.h),
              const RecommendationDoctorSeeAllList(),
              verticalSpace(16.h),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
