import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';
import 'package:daily_planner/features/authentication/widgets/auth_button.dart';
import 'package:daily_planner/features/authentication/widgets/auth_text_field.dart';
import 'package:daily_planner/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePlannerScreen extends StatefulWidget {
  const CreatePlannerScreen({super.key});

  @override
  State<CreatePlannerScreen> createState() => _CreatePlannerScreenState();
}

class _CreatePlannerScreenState extends State<CreatePlannerScreen> {
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
                'Name your planner',
                style: textTheme.headlineMedium,
              ),
              Gaps.v32,
              Text(
                "Planner name",
                style: textTheme.labelLarge,
              ),
              Gaps.v10,
              const AuthTextField(
                label: 'My Planner',
              ),
              Gaps.v32,
              AuthButton(
                label: 'Create a planner',
                onPressed: () {
                  context.go("/home");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
