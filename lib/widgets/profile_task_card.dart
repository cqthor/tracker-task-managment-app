import 'package:flutter/material.dart';

class ProfileTaskCard extends StatelessWidget {
  const ProfileTaskCard({
    Key? key,
    required this.finished,
    required this.task,
  }) : super(key: key);
  final bool finished;
  final int task;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          finished ? Icons.done : Icons.watch_later_outlined,
          color: const Color(0xff002055),
        ),
        Text(
          "$task",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 22),
        ),
        const SizedBox(height: 5),
        Text(
          finished ? "Total Complete" : "Ongoing",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: const Color(0xff848A94),
              ),
        ),
      ],
    );
  }
}
