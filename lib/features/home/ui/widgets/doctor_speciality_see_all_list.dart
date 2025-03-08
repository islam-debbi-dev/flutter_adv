import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorSpecialitySeeAllList extends StatelessWidget {
  const DoctorSpecialitySeeAllList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See all',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}
