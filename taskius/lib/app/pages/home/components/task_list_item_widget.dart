import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3)),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: Tab(
              icon: Image.asset('assets/icons/check-list.png'),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 70, 0, 201),
              fontFamily: "Nunita",
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 70, 0, 201),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
