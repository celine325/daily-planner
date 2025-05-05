import 'package:flutter/material.dart';
import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';
import 'package:go_router/go_router.dart';

class AccessInfoScreen extends StatelessWidget {
  const AccessInfoScreen({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Sizes.size96,
                height: Sizes.size96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/clock_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Gaps.v32,
              Text(
                'Create an account to sync \nyour planner',
                textAlign: TextAlign.left,
                style: textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
              Gaps.v12,
              Text(
                "Because planner is stored on your devices, you'll need to create an account to access your planner on another phone.",
                textAlign: TextAlign.left,
                style: textTheme.bodyMedium?.copyWith(
                  color: Colors.white70,
                ),
              ),
              Gaps.v40,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.go("/createPlanner");
                  },
                  child: const Text('Skip for now'),
                ),
              ),
              Gaps.v16,
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    context.go("/signup");
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text('Create account'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
