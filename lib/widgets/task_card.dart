import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.finised,
    required this.left,
    required this.bgColor,
    required this.borderColor,
    required this.titleColor,
    required this.subColor,
    required this.progressColor,
  }) : super(key: key);
  final String title, subtitle;
  final int finised, left;
  final Color bgColor, borderColor, titleColor, subColor, progressColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: bgColor,
          border: Border.all(width: 1, color: borderColor)),
      padding: const EdgeInsets.only(left: 23, top: 26, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: titleColor),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: subColor,
                ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Stack(children: const [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 42),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 16,
                    ),
                  ),
                ]),
              ),
              SizedBox(
                width: 116,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Progress",
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: const Color(0xffC5DAFD),
                                  ),
                        ),
                        const SizedBox(width: 25),
                        Text(
                          "$left/$finised",
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: progressColor,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    LinearPercentIndicator(
                      padding: const EdgeInsets.all(0),
                      width: 115,
                      lineHeight: 5,
                      percent: left / finised,
                      backgroundColor: const Color(0xff004CCD),
                      progressColor: progressColor,
                      barRadius: const Radius.circular(2.5),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
