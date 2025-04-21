import 'package:daily_planner/constants/sizes.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

  const AuthButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      height: Sizes.size56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color.primary,
            foregroundColor: color.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.size12),
            )),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              )
            : Text(
                label,
                style: textTheme.labelLarge,
              ),
      ),
    );
  }
}
