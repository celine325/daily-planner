import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekDateRow extends StatelessWidget {
  const WeekDateRow({super.key});

  List<DateTime> getWeekDates() {
    final now = DateTime.now();
    final todayWeekday = now.weekday;
    final startOfWeek = now.subtract(Duration(days: todayWeekday - 1));

    return List.generate(7, (i) => startOfWeek.add(Duration(days: i)));
  }

  @override
  Widget build(BuildContext context) {
    final dates = getWeekDates();
    final now = DateTime.now();
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: dates.map((date) {
        final isToday = DateUtils.isSameDay(date, now);
        return Column(
          children: [
            Text(
              '${date.day}',
              style: textTheme.bodyLarge?.copyWith(
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                color: isToday ? color.primary : null,
              ),
            ),
            Text(
              DateFormat('EEE').format(date).toUpperCase(),
              style: textTheme.labelSmall?.copyWith(
                fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                color: isToday ? color.primary : null,
                letterSpacing: 1.5,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
