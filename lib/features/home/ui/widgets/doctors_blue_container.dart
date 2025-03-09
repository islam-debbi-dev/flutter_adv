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
      height: 260.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 205.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 11.h),
                      ),
                      child: Text('Find Nearby',
                          style: TextStyles.font12BlueRegular)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.h,
            right: -10.w, // Adjusted to move the image to the right
            child: Container(
              width: 214.w,
              child: Image.asset('assets/images/doctor_card_home_page.png'),
            ),
          ),
        ],
      ),
    );
  }
}
