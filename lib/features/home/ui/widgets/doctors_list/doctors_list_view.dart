import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/specializations_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../doctors_list_view_item.dart';

class DoctorsListView extends StatefulWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  State<DoctorsListView> createState() => _DoctorsListViewState();
}

class _DoctorsListViewState extends State<DoctorsListView> {
  var selectSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.doctorsList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectSpecializationIndex = index;
              });
            },
            child: DoctorsListViewItem(
              doctorsModel: widget.doctorsList?[index],
            ),
          );
        },
      ),
    );
  }
}
