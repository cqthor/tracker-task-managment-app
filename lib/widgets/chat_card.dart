import 'package:flutter/material.dart';

class ChatCardScreen extends StatelessWidget {
  const ChatCardScreen({
    Key? key,
    required this.name,
    required this.lastActivity,
    required this.photo,
  }) : super(key: key);
  final String name, lastActivity, photo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(photo),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    lastActivity,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff848A94),
                    ),
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Color(0xff848A94),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
