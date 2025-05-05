import 'package:daily_planner/constants/gaps.dart';
import 'package:daily_planner/constants/sizes.dart';
import 'package:daily_planner/features/home/widgets/todo_card.dart';
import 'package:daily_planner/features/home/widgets/week_date_row.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final String? plannerName;

  const HomeScreen({
    super.key,
    required this.plannerName,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //TODO: 메뉴 열기
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: Text(
          plannerName ?? 'My Planner',
          style: textTheme.headlineMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: Sizes.size16),
            child: CircleAvatar(
              backgroundColor: color.primary.withValues(alpha: 0.8),
              radius: 18,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Gaps.v20,
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                  ),
                  child: WeekDateRow(),
                ),
                Gaps.v20,
              ],
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  width: 260,
                  height: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.primary,
                  ),
                  child: Stack(
                    children: [
                      //TODO: 도트 추가
                    ],
                  ),
                ),
              ),
            ),
            Gaps.v20,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today\'s Tasks',
                  style: textTheme.headlineMedium,
                ),
              ),
            ),
            Gaps.v12,
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.size20),
                child: ListView(
                  children: [
                    TodoCard(time: '[12:00 - 03:00]', text: 'Read a book'),
                    TodoCard(time: '[03:00 - 05:00]', text: 'Workout'),
                    TodoCard(time: '[05:00 - 06:00]', text: 'Write journal'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: 할 일 추가
        },
        backgroundColor: color.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
