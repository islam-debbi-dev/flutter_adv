import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class RecommendationDoctorSeeAllList extends StatelessWidget {
  const RecommendationDoctorSeeAllList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recommendation Doctor',
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
