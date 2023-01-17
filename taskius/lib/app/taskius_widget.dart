import 'package:flutter/material.dart';
import 'package:taskius/app/pages/home/home_page.dart';
import 'package:taskius/app/pages/intro/intros_page.dart';
import 'package:taskius/app/pages/tool_alarm_clock/alarm_clock_tool_page.dart';
import 'package:taskius/app/pages/tool_pomodoro/pomodoro_tool_page.dart';
import 'package:taskius/app/pages/tool_water/water_tool_page.dart';

class TaskiusWidget extends StatelessWidget {
  const TaskiusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: IntrosPage.routeName,
      routes: {
        IntrosPage.routeName: (context) => const IntrosPage(),
        HomePage.routeName: (context) => const HomePage(),
        PomodoroToolPage.routeName: (context) => const PomodoroToolPage(),
        WaterToolPage.routeName: (context) => const WaterToolPage(),
        AlarmClockToolPage.routeName: (context) => const AlarmClockToolPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //TODO: Learn about themes later
        //primarySwatch: Colors.indigo,
      ),
    );
  }
}
