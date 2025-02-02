import 'package:flutter/material.dart';
import 'package:flutter_adv/core/routing/routes.dart';
import 'package:flutter_adv/features/login/ui/login_screen.dart';
import 'package:flutter_adv/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argument to be passed in any screen like this (argemunts as ClassName )

    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
