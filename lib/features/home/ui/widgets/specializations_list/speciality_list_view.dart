import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/logic/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/specializations_response_model.dart';
import 'speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationsList;
  const SpecialityListView({super.key, required this.specializationsList});

  @override
  State<SpecialityListView> createState() => _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<SpecialityListView> {
  var selectSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Provide a fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationsList[index]?.id);
            },
            child: SpecialityListViewItem(
              itemIndex: index,
              specializationsData: widget.specializationsList[index],
              selectedIndex: selectSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
