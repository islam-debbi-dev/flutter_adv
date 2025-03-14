import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class SpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
  final int selectedIndex;
  const SpecialityListViewItem(
      {super.key,
      required this.itemIndex,
      this.specializationsData,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0.w : 20.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.mainBlue,
                      width: 2.w,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 30.r,
                    backgroundColor: ColorsManager.lighterGary,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 42.h,
                      width: 62.h,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsManager.lighterGary,
                  child: SvgPicture.asset('assets/svgs/general_speciality.svg',
                      height: 35.h, width: 55.w),
                ),
          verticalSpace(5.h),
          Text(
            specializationsData?.name ?? 'Doctor',
            style: itemIndex == selectedIndex
                ? TextStyles.font14BlueSemiBold
                : TextStyles.font12GrayRegular,
          ),
        ],
      ),
    );
  }
}
