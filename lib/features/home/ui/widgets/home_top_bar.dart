import 'package:flutter/material.dart';
import 'package:flutter_adv/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: TextStyles.font18BarkBlueBold,
            ),
            Text(
              'How are you today?',
              style: TextStyles.font12GrayRegular,
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.lighterGary,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            child: SvgPicture.asset(
              'assets/svgs/notifications.svg',
            ),
          ),
        )
      ],
    );
  }
}
