import 'package:flutter/material.dart';
import 'package:tracker/screens/add/add_task_screen.dart';
import 'package:tracker/widgets/add_new_widget.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 50),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddTask(),
                  ),
                );
              }),
              child:
                  const AddNewWidget(title: "Create Task", icon: Icons.create)),
          const SizedBox(height: 16),
          const AddNewWidget(
            title: "Create Project",
            icon: Icons.add_circle_outline_outlined,
          ),
          const SizedBox(height: 16),
          const AddNewWidget(
            title: "Create Team",
            icon: Icons.people_alt_outlined,
          ),
          const SizedBox(height: 16),
          const AddNewWidget(
            title: "Create Event",
            icon: Icons.watch_later_outlined,
          ),
          const SizedBox(height: 13),
          CircleAvatar(
            radius: 21,
            backgroundColor: const Color(0xff3580FF),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
