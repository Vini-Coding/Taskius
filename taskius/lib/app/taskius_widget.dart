import 'package:flutter/material.dart';
import 'package:taskius/app/pages/home/home_controller.dart';
import 'package:taskius/app/pages/home/home_page.dart';
import 'package:taskius/app/pages/intro/intros_controller.dart';
import 'package:taskius/app/pages/intro/intros_page.dart';
import 'package:provider/provider.dart';

class TaskiusWidget extends StatelessWidget {
  const TaskiusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IntrosController>(
          create: (_) => IntrosController(),
        ),
        ChangeNotifierProvider<HomeController>(
          create: (_) => HomeController(),
        ),
      ],
      
      child: MaterialApp(
        initialRoute: IntrosPage.routeName,
        routes: {
          IntrosPage.routeName: (context) => const IntrosPage(),
          HomePage.routeName: (context) => const HomePage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
