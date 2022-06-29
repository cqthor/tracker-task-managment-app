import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: const Color(0xffE9F1FF),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.navigate_next_outlined))
          ],
        ),
      ),
    );
  }
}
