import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/spacing.dart';
import 'package:flutter_adv/core/theming/colors.dart';
import 'package:flutter_adv/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 175.h,
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: ColorsManager.mainBlue,
              //    fit : BoxFit.cover,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and \nschedule with \nnearst doctor',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(13),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 6.h),
                      ),
                      child: Text('Find Nearby',
                          style: TextStyles.font12BlueRegular)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.h,
            right: -5.w, // Adjusted to move the image to the right
            child: SizedBox(
              width: 214.w,
              child: Image.asset('assets/images/doctor_card_home_page.png'),
            ),
          ),
        ],
      ),
    );
  }
}
