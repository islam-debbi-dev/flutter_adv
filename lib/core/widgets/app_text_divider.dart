import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextDivider extends StatelessWidget {
  const AppTextDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w, // Set the width as per your design
      height: 18.h, // Set the height as per your design
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Line on the left side
          Expanded(
            child: Divider(
              color: ColorsManager.lightGary,
              thickness: 1,
              endIndent: 5,
            ),
          ),
          // Text in the center
          Text(
            'Or sign in with',
            style: TextStyle(
              color: ColorsManager.semiLightGray,
              fontSize: 12,
            ),
          ),
          // Line on the right side
          Expanded(
            child: Divider(
              color: ColorsManager.lightGary,
              thickness: 1,
              indent: 5,
            ),
          ),
        ],
      ),
    );
  }
}
