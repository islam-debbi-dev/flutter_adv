import 'package:flutter/material.dart';
import 'package:flutter_adv/core/routing/app_router.dart';
import 'package:flutter_adv/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  // for
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // 1 to fix text being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  //await checkIfLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

// checkIfLoggedInUser() async {
//   // check if user is logged in
//   String? userToken =
//       await SharedPrefHelper.getString(SharedPrefKeys.userToken);
//   if (!userToken.isNullOrEmpty()) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }
