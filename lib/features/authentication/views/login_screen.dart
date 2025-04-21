import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';
import 'package:daily_planner/features/authentication/widgets/auth_button.dart';
import 'package:daily_planner/features/authentication/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'Log In',
                style: textTheme.headlineMedium,
              ),
              Gaps.v4,
              Text(
                "Log in and start planning your day.",
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
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Forgot password
                  },
                  child: const Text(
                    'Forgot Password?',
                  ),
                ),
              ),
              Gaps.v16,
              AuthButton(
                label: 'LOG IN',
                onPressed: () {
                  // TODO: Login in
                },
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: textTheme.bodyMedium,
                  ),
                  Gaps.h8,
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to SignUpScreen
                    },
                    child: Text(
                      'Sign Up',
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
