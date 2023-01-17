import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:taskius/app/pages/home/home_page.dart';
import 'package:taskius/app/pages/intro/components/intropage_widget.dart';
import 'package:taskius/app/pages/intro/intros_controller.dart';

class IntrosPage extends StatefulWidget {
  static const routeName = '/intro';
  const IntrosPage({Key? key}) : super(key: key);

  @override
  State<IntrosPage> createState() => _IntrosPageState();
}

class _IntrosPageState extends State<IntrosPage> {
  void goToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, HomePage.routeName);  
  }

  @override
  Widget build(BuildContext buildContext) {
    return ChangeNotifierProvider<IntrosController>(
      create: (context) => IntrosController(),
      child: Consumer<IntrosController>(
        builder: (context, controller, _) {
          return IntroductionScreen(
            globalBackgroundColor: Colors.white,
            scrollPhysics: const BouncingScrollPhysics(),
            showSkipButton: true,
            isTopSafeArea: true,
            isBottomSafeArea: true,
            pages: [
              introPageWidget(
                title: "To Do's by Feedback",
                body:
                    "Enjoy an amazing To Do List View based in instant feedback to boost your productivity",
                imagePath: 'assets/vectors/intro1.png',
              ),
              introPageWidget(
                title: "Revel in Our Pomodoro Tool",
                body:
                    "You can always create a Task with the Pomodoro Tool for an improved Task Management",
                imagePath: "assets/vectors/intro2.png",
              ),
              introPageWidget(
                title: "Increase your Health with Taskius",
                body:
                    "Use the Bottle of Water Tool to manage how much of Water you are drinking in a day",
                imagePath: "assets/vectors/intro3.png",
              ),
            ],
            skip: const Text(
              'Skip',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Color.fromARGB(255, 93, 0, 255),
              ),
            ),
            next: const Icon(Icons.arrow_forward, color: Colors.black),
            done: const Text(
              'Done',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Color.fromARGB(255, 93, 0, 255),
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: const Size.square(10),
              activeSize: const Size(20, 10),
              color: Colors.black26,
              activeColor: const Color.fromARGB(255, 93, 0, 255),
              spacing: const EdgeInsets.symmetric(horizontal: 3),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onDone: () => goToHome(context),
            onSkip: () => goToHome(context),
          );
        }
      ),
    );
  }
}
