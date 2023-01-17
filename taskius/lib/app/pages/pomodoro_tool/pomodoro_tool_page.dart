import 'package:flutter/material.dart';

class PomodoroToolPage extends StatefulWidget {
  static const routeName = '/pomodoro';
  const PomodoroToolPage({Key? key}) : super(key: key);

  @override
  State<PomodoroToolPage> createState() => _PomodoroToolPageState();
}

class _PomodoroToolPageState extends State<PomodoroToolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pomodoro Tool Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(),
    );
  }
}
