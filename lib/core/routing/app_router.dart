import 'package:flutter/material.dart';
import 'package:flutter_adv/core/di/dependency_injection.dart';
import 'package:flutter_adv/core/routing/routes.dart';
import 'package:flutter_adv/features/home/ui/home_screen.dart';
import 'package:flutter_adv/features/login/logic/login_cubit.dart';
import 'package:flutter_adv/features/login/ui/screens/login_screen.dart';
import 'package:flutter_adv/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this argument to be passed in any screen like this (argemunts as ClassName )

    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
