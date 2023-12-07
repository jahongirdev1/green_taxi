import 'package:flutter/material.dart';
import 'custom_extension.dart';

import '../styles/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColors.mainColor,
        ),
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(17),
            ),
          ),
        ),
      ),
      child: Text(
        text,
        style: context.textTheme.bodyMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
