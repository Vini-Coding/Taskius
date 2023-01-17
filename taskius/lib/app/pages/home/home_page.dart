import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:taskius/app/components/my_page_template.dart';
import 'package:taskius/app/pages/home/components/homecard_widget.dart';
import 'package:taskius/app/pages/home/components/task_list_item_widget.dart';
import 'package:taskius/app/pages/home/home_controller.dart';
import 'package:taskius/app/pages/pomodoro_tool/pomodoro_tool_page.dart';
import 'package:taskius/app/pages/water_tool/water_tool_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 55, 0, 150),
            elevation: 4,
            child: const Icon(
              Icons.add_task_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        body: MyPageTemplate(
          expandedChild1: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 40),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            'Hello ${controller.name}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 35,
                              fontFamily: "Nunita",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            DateFormat('EEEE, MMMM dd')
                                .format(DateTime.now())
                                .toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              fontFamily: 'Nunita',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                    padding: const EdgeInsets.only(top: 20, right: 30),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Tab(
                              icon: Image.asset(
                                'assets/icons/bottle-of-water.png',
                                width: 25,
                                height: 25,
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Tab(
                              icon: Image.asset(
                                'assets/icons/bottle-of-water-outlined.png',
                                width: 25,
                                height: 25,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 24),
                    HomeCardWidget(
                      title: 'Pomodoro',
                      subtitle: 'Set a Pomodoro Timer',
                      imagePath: 'assets/icons/pomodoro.png',
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed(PomodoroToolPage.routeName),
                    ),
                    HomeCardWidget(
                      title: 'Bottle of Water Tool',
                      subtitle:
                          '${controller.litersDrinked} liters drinked today',
                      imagePath: 'assets/icons/bottle-of-water2.png',
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed(WaterToolPage.routeName),
                    ),
                    HomeCardWidget(
                      title: 'Alarm Clock',
                      subtitle: 'Currently setted to ${controller.alarmTime}',
                      imagePath: 'assets/icons/alarm-clock.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          expandedChild2: ListView(
            shrinkWrap: true,
            children: const [
              TaskListItem(title: 'Sample List'),
            ],
          ),
          flexExpanded1: 2,
          flexExpanded2: 2,
        ),
      ),
    );
  }
}
