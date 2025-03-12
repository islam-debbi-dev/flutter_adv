import 'package:flutter/material.dart';
import 'package:flutter_adv/core/routing/app_router.dart';
import 'package:flutter_adv/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';

void main() async {
<<<<<<< HEAD
<<<<<<< HEAD
  WidgetsFlutterBinding.ensureInitialized();
=======
>>>>>>> parent of 5570867 (add save token without run)
=======
>>>>>>> parent of 5570867 (add save token without run)
  setupGetIt();
  // 1 to fix text being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
