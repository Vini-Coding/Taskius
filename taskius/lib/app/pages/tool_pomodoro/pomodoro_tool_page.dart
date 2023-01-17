import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskius/app/pages/tool_pomodoro/pomodoro_tool_controller.dart';

class PomodoroToolPage extends StatefulWidget {
  static const routeName = '/pomodoro';
  const PomodoroToolPage({Key? key}) : super(key: key);

  @override
  State<PomodoroToolPage> createState() => _PomodoroToolPageState();
}

class _PomodoroToolPageState extends State<PomodoroToolPage> {
  @override
  Widget build(BuildContext buildContext) {
    return ChangeNotifierProvider<PomodoroToolController>(
      create:(context) => PomodoroToolController(),
      child: Consumer(
        builder: (context, controller, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Pomodoro Tool Page"),
              backgroundColor: Colors.redAccent,
            ),
            body: Container(),
          );
        }
      ),
    );
  }
}
