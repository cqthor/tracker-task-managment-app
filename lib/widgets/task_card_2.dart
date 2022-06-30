import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TaskCard2 extends StatelessWidget {
  const TaskCard2({
    Key? key,
    required this.progressColor,
    required this.title,
    required this.groupTitle,
  }) : super(key: key);

  final Color progressColor;
  final String title, groupTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: const Color(0xffE9F1FF),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline5!,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffB0D97F),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 2,
                      ),
                      child: Text(
                        "10/20",
                        style: Theme.of(context).textTheme.subtitle1!,
                      ),
                    ),
                  ],
                ),
                Text(
                  groupTitle,
                  style: const TextStyle(
                    color: Color(0xff848A94),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Stack(children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://reqres.in/img/faces/8-image.jpg"),
                        radius: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://reqres.in/img/faces/7-image.jpg"),
                          radius: 12,
                        ),
                      ),
                    ]),
                    const SizedBox(width: 6),
                    LinearPercentIndicator(
                      padding: const EdgeInsets.all(0),
                      lineHeight: 8,
                      width: 200,
                      barRadius: const Radius.circular(4),
                      percent: .5,
                      progressColor: progressColor,
                      backgroundColor: const Color(0xffECF4E5),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
