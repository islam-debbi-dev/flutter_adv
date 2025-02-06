import 'package:flutter/material.dart';
import 'package:flutter_adv/core/helpers/spacing.dart';
import 'package:flutter_adv/core/theming/colors.dart';
import 'package:flutter_adv/core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacter,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String s, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
        ),
        horizontalSpace(6),
        Text(
          s,
          style: TextStyles.font12BlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated
                ? ColorsManager.gary
                : const Color.fromARGB(255, 226, 82, 82),
          ),
        ),
      ],
    );
  }
}
