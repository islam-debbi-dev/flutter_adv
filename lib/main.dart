import 'package:flutter/material.dart';
import 'package:flutter_adv/core/routing/app_router.dart';
import 'package:flutter_adv/doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
