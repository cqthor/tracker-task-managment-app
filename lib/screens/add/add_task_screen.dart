import 'package:flutter/material.dart';
import 'package:tracker/widgets/time_picker.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  List selectedUsers = [];
  void select(index) {
    setState(() {
      if (selectedUsers.contains(index)) {
        selectedUsers.remove(index);
      } else {
        selectedUsers.add(index);
      }
    });
  }

  List<String> boards = ["Urgent", "Running", "Ongoing"];
  int _selectedBoard = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() => Navigator.maybePop(context)),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                    ),
                  ),
                  Text("Add Task",
                      style: Theme.of(context).textTheme.headline3!),
                  const SizedBox(width: 36),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 36),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Task Name",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: const Color(0xff848A94),
                                    ),
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            // controller: mailController,
                            style: Theme.of(context).textTheme.headline3,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 20,
                              ),
                              hintText: "Enter Task Name",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    color: const Color(0xff848A94),
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color(0xffE9F1FF),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                  color: Color(0xff3580FF),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "Team Member",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: const Color(0xff848A94),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 67,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return index == 4
                                ? Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color(0xff3580FF),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.add,
                                                color: Color(0xff3580FF))),
                                      ),
                                      // const Spacer()
                                    ],
                                  )
                                : Padding(
                                    padding: index == 0
                                        ? const EdgeInsets.only(
                                            left: 24, right: 7.5)
                                        : const EdgeInsets.symmetric(
                                            horizontal: 7.5),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          customBorder: const CircleBorder(),
                                          onTap: () {
                                            select(index);
                                          },
                                          child: CircleAvatar(
                                            backgroundImage: const NetworkImage(
                                              "https://reqres.in/img/faces/12-image.jpg",
                                            ),
                                            child: selectedUsers.contains(index)
                                                ? CircleAvatar(
                                                    backgroundColor:
                                                        const Color(0xff3580FF)
                                                            .withOpacity(0.7),
                                                    child:
                                                        const Icon(Icons.done),
                                                  )
                                                : const SizedBox(),
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          "Jenny$index",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                color: const Color(0xff848A94),
                                              ),
                                        ),
                                      ],
                                    ),
                                  );
                          }),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const TimePicker(
                              title: "Date",
                              secontTitle: "Pick a date",
                              width: double.infinity),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimePicker(
                                title: "Start time",
                                secontTitle: "9:30 am",
                                width:
                                    (MediaQuery.of(context).size.width - 78) /
                                        2,
                              ),
                              TimePicker(
                                title: "End time",
                                secontTitle: "3:30 pm",
                                width:
                                    (MediaQuery.of(context).size.width - 78) /
                                        2,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "Board",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: const Color(0xff848A94),
                            ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 45,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: boards.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: index == 0
                                  ? const EdgeInsets.only(left: 24, right: 8)
                                  : const EdgeInsets.symmetric(horizontal: 8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedBoard = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      width: 2,
                                      color: index == _selectedBoard
                                          ? const Color(0xff3580FF)
                                          : const Color(0xffE9F1FF),
                                    ),
                                  ),
                                  child: Text(
                                    boards[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                          color: index == _selectedBoard
                                              ? const Color(0xff002055)
                                              : const Color(0xff848A94),
                                        ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 78),
                      child: TextButton(
                          onPressed: () {}, child: const Text("Save")),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
