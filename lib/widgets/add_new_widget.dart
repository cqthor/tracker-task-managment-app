import 'package:flutter/material.dart';

class AddNewWidget extends StatelessWidget {
  const AddNewWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffE9F1FF),
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
        leading: Icon(
          icon,
          color: const Color(0xff002055),
        ),
      ),
    );
  }
}
