import 'package:flutter/material.dart';
import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.primary,
              color.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Sizes.size96,
                height: Sizes.size96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                child: const Icon(
                  Icons.schedule,
                  size: Sizes.size48,
                  color: Colors.white,
                ),
              ),
              Gaps.v32,
              Text(
                'Welcome to Daily Planner',
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
              Gaps.v12,
              Text(
                'Stay organized, manage your tasks, and plan every moment with ease.',
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: Colors.white70,
                ),
              ),
              Gaps.v40,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to LoginScreen
                  },
                  child: const Text('Log In'),
                ),
              ),
              Gaps.v16,
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    // TODO: Navigate to SignUpScreen
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              Gaps.v32,
              TextButton(
                onPressed: () {
                  // TODO: Sign in anonymously
                },
                child: const Text(
                  'Continue without signing in',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
