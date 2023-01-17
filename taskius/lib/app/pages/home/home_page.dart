import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:taskius/app/pages/home/components/homecard_widget.dart';
import 'package:taskius/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'Vini';
  double litersDrinked = 2.5;
  String alarmTime = '07:00';
  @override
  void initState() {
    super.initState();
  }

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
        body: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 43, 0, 117),
                Color.fromARGB(255, 55, 0, 150),
                Color.fromARGB(255, 74, 0, 201),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Column(
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
                                    'Hello $name',
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
                            padding:
                                const EdgeInsets.only(top: 20, right: 30),
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
                                imagePath: 'assets/icons/pomodoro.png'),
                            HomeCardWidget(
                                title: 'Bottle of Water Tool',
                                subtitle:
                                    '$litersDrinked liters drinked today.',
                                imagePath:
                                    'assets/icons/bottle-of-water2.png'),
                            HomeCardWidget(
                                title: 'Alarm Clock',
                                subtitle: 'Currently setted to $alarmTime',
                                imagePath: 'assets/icons/alarm-clock.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 25),
                                  child: Tab(
                                    icon: Image.asset(
                                        'assets/icons/check-list.png'),
                                  ),
                                ),
                                const Text(
                                  'Sample List',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 70, 0, 201),
                                    fontWeight: FontWeight.w300,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
