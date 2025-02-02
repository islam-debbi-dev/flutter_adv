import 'package:flutter/widgets.dart';
import 'package:flutter_adv/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String svgPath;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.svgPath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: const BoxDecoration(
          color: ColorsManager.lightGary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            svgPath,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}
