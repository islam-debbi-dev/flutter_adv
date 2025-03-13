import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/logic/home_cubit.dart';
import 'package:flutter_adv/features/home/logic/home_state.dart';
import 'package:flutter_adv/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import 'doctors_list_view.dart';
import 'recommendation_doctor_see_all_list.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          specializationSuccess: (specializationsResponseModel) {
            return setupSuccess(specializationsResponseModel);
          },
          specializationError: (message) => Center(
            child: setupError(message),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget setupSuccess(specializationsResponseModel) {
    var specializationsList =
        specializationsResponseModel.specializationDataList;
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationsList: specializationsList ?? [],
          ),
          // const RecommendationDoctorSeeAllList(),
          verticalSpace(10.h),
          DoctorsListView(doctorsList: specializationsList?[0]?.doctorsList),
        ],
      ),
    );
  }

  Widget setupError(message) {
    return Center(
      child: Text(message.toString()),
    );
  }
}
