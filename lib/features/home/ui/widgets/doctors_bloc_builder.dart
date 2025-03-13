import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/logic/home_cubit.dart';
import 'package:flutter_adv/features/home/logic/home_state.dart';
import 'package:flutter_adv/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox.shrink();
        }, doctorsSuccess: (doctorsList) {
          return setupSuccess(doctorsList);
        }, doctorsError: (error) {
          return Center(
            child: setupError(error.toString()),
          );
        });
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setupError(message) {
    return Text(message);
  }
}
