import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/logic/home_cubit.dart';
import 'package:flutter_adv/features/home/logic/home_state.dart';
import 'package:flutter_adv/features/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../doctors_list/doctors_shimmer_loading.dart';
import 'speciality_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => setupLoading(),
          specializationsSuccess: (specializationsResponseModel) {
            return setupSuccess(specializationsResponseModel);
          },
          specializationsError: (message) => Center(
            child: setupError(message),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
        child: Column(
      children: [
        SpecialityShimmerLoading(),
        DoctorsShimmerLoading(),
      ],
    ));
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationsList: specializationsList ?? [],
    );
  }

  Widget setupError(message) {
    return Center(
      child: Text(message.toString()),
    );
  }
}
