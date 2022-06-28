import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InProgressCard extends StatelessWidget {
  const InProgressCard({
    Key? key,
    required this.progress,
    required this.title,
    required this.projectTitle,
    required this.date,
  }) : super(key: key);
  final int progress;
  final String title, projectTitle, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: const Color(0xffE9F1FF))),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                projectTitle,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xff848A94),
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5!,
              ),
              const SizedBox(height: 5),
              Text(
                date,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: const Color(0xff848A94),
                    ),
              ),
            ],
          ),
          CircularPercentIndicator(
            radius: 22.0,
            lineWidth: 6.0,
            percent: progress / 100,
            center: Text(
              "$progress%",
              style: Theme.of(context).textTheme.headline6!,
            ),
            progressColor: const Color(0xff3580FF),
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: const Color(0xffD1E2FE),
          ),
        ],
      ),
    );
  }
}
