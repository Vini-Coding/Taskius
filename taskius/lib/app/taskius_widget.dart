import 'package:flutter/material.dart';
import 'package:taskius/app/pages/home/home_controller.dart';
import 'package:taskius/app/pages/home/home_page.dart';
import 'package:taskius/app/pages/intro/intros_controller.dart';
import 'package:taskius/app/pages/intro/intros_page.dart';
import 'package:provider/provider.dart';
import 'package:taskius/app/pages/pomodoro_tool/pomodoro_tool_controller.dart';
import 'package:taskius/app/pages/pomodoro_tool/pomodoro_tool_page.dart';
import 'package:taskius/app/pages/water_tool/water_tool_controller.dart';
import 'package:taskius/app/pages/water_tool/water_tool_page.dart';

class TaskiusWidget extends StatelessWidget {
  const TaskiusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IntrosController>(
          create: (context) => IntrosController(),
        ),
        ChangeNotifierProvider<HomeController>(
          create: (context) => HomeController(),
        ),
        ChangeNotifierProvider<WaterToolController>(
          create: (context) => WaterToolController(),
        ),
        ChangeNotifierProvider<PomodoroToolController>(
          create: (context) => PomodoroToolController(),
        ),
      ],
      child: MaterialApp(
        initialRoute: IntrosPage.routeName,
        routes: {
          IntrosPage.routeName: (context) => const IntrosPage(),
          HomePage.routeName: (context) => const HomePage(),
          WaterToolPage.routeName: (context) => const WaterToolPage(),
          PomodoroToolPage.routeName: (context) => const PomodoroToolPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
