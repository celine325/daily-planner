import 'package:daily_planner/constants/sizes.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String text;
  final String time;

  const TodoCard({
    super.key,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.only(
        bottom: Sizes.size12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.size12),
      ),
      child: ListTile(
        leading: const Icon(Icons.circle_outlined),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: textTheme.labelSmall?.copyWith(
                color: Colors.grey,
              ),
            ),
            Text(
              text,
              style: textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
