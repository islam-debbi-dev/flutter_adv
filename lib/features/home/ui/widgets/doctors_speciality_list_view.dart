import 'package:flutter/material.dart';
import 'package:flutter_adv/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final int index;
  final SpecializationsData? specializationsData;
  const DoctorsSpecialityListView(
      {super.key, required this.index, this.specializationsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0.w : 20.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManager.lighterGary,
            child: SvgPicture.asset('assets/svgs/general_speciality.svg',
                height: 40.h, width: 60.w),
          ),
          verticalSpace(8.h),
          Text(
            specializationsData?.name ?? 'Doctor',
            style: TextStyles.font12GrayRegular,
          ),
        ],
      ),
    );
  }
}
