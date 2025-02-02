import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/extension.dart';
import 'package:flutter_adv/core/routing/routes.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextButton(
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
          style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 50)),
              backgroundColor:
                  MaterialStateProperty.all(ColorsManager.mainBlue),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
          child: Text(
            'Get Started',
            style: TextStyles.font16whiteBold,
          )),
    );
  }
}
