import 'package:flutter/material.dart';
import 'package:flutter_adv/core/routing/app_router.dart';
import 'package:flutter_adv/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  setupGetIt();
  // to fix text being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
