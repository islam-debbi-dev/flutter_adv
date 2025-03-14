import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specializations_response_model.dart';
import 'doctors_speciality_list_view.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationsList});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListView(
            index: index,
            specializationsData: specializationsList[index],
          );
        },
      ),
    );
  }
}
