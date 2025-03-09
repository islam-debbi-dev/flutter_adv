import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    width: 110.w,
                    height: 140.h,
                    'https://therapybrands.com/wp-content/uploads/2023/05/Mask-Group-2@2x-1518x1536-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(20.w),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Dr. John Doe',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold)),
                      verticalSpace(5.h),
                      Text('Cardiologist',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.grey)),
                      verticalSpace(5.h),
                      Text('5 years experience',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.grey)),
                      verticalSpace(5.h),
                      Text('4.5',
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.grey)),
                    ]))
              ],
            ),
          );
        },
      ),
    );
  }
}
