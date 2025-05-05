import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';
import 'package:daily_planner/features/authentication/widgets/auth_button.dart';
import 'package:daily_planner/features/authentication/widgets/auth_text_field.dart';
import 'package:daily_planner/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v72,
              Text(
                'Sign Up',
                style: textTheme.headlineMedium,
              ),
              Gaps.v4,
              Text(
                "Create your account and start planning your day.",
                style: textTheme.bodyMedium?.copyWith(
                  color: color.onSurface.withValues(alpha: 0.7),
                ),
              ),
              Gaps.v32,
              const AuthTextField(
                label: 'Eamil Address',
                keyboardType: TextInputType.emailAddress,
              ),
              Gaps.v20,
              const AuthTextField(
                label: 'Password',
                obscureText: true,
              ),
              Gaps.v32,
              AuthButton(
                label: 'SIGN UP',
                onPressed: () {
                  // TODO: sign-up login
                },
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  Gaps.h8,
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to LoginScreen
                    },
                    child: Text(
                      'Log In',
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
