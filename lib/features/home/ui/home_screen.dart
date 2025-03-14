import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/doctor_speciality_see_all_list.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_and_doctors_bloc_builder.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const HomeTopBar(),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorsBlueContainer(),
              verticalSpace(16.h),
              const DoctorSpecialitySeeAllList(),
              verticalSpace(16.h),
              const SpecializationsAndDoctorsBlocBuilder(),

              //   const DoctorSpecialityListView(),
              //   verticalSpace(16.h),
              //   const RecommendationDoctorSeeAllList(),
              //   verticalSpace(16.h),
              //   const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
