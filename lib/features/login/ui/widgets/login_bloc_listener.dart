import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_adv/core/helpers/extension.dart';
import 'package:flutter_adv/core/routing/routes.dart';
import 'package:flutter_adv/core/theming/colors.dart';
import 'package:flutter_adv/core/theming/styles.dart';
import 'package:flutter_adv/features/login/logic/login_cubit.dart';
import 'package:flutter_adv/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        if (state is Loading) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                ),
              );
            },
            success: (data) {
              context.pop();
              context.pushNamed(Routes.homeScreen);
            },
            failure: (message) {
              context.pop();

              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        icon: const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 32,
                        ),
                        content: Text(
                          'Error',
                          style: TextStyles.font15BarkBlueMedium,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text(
                                "Got it",
                                style: TextStyles.font14BlueSemiBold,
                              ))
                        ],
                      ));
            },
            initial: () {},
          );
        }
        ;
      },
      child: const SizedBox.shrink(),
    );
  }
}
