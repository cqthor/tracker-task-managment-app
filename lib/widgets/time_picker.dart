import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker(
      {Key? key,
      required this.title,
      required this.secontTitle,
      required this.width})
      : super(key: key);
  final String title, secontTitle;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: const Color(0xff848A94),
              ),
        ),
        const SizedBox(height: 15),
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 2,
              color: const Color(0xffE9F1FF),
            ),
          ),
          child: Text(
            secontTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
