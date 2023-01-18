import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskius/app/components/glass_card_widget.dart';
import 'package:taskius/app/components/my_page_template.dart';
import 'package:taskius/app/pages/home/home_page.dart';
import 'package:taskius/app/pages/tool_water/water_tool_controller.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class WaterToolPage extends StatefulWidget {
  static const routeName = '/water';
  const WaterToolPage({Key? key}) : super(key: key);

  @override
  State<WaterToolPage> createState() => _WaterToolPageState();
}

class _WaterToolPageState extends State<WaterToolPage> {
  @override
  Widget build(BuildContext buildContext) {
    return ChangeNotifierProvider<WaterToolController>(
      create: (context) => WaterToolController(),
      child: Consumer<WaterToolController>(builder: (context, controller, _) {
        return Scaffold(
          body: MyPageTemplate(
            expandedChild1: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.of(context)
                            .pushReplacementNamed(HomePage.routeName),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        splashColor: Colors.grey,
                        padding: const EdgeInsets.all(50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        DateFormat('EEEE, MMMM dd')
                            .format(DateTime.now())
                            .toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                          fontFamily: 'Nunita',
                        ),
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
                GlassCardWidget(
                  titleWidget: const Text(
                    'You drunk 2.8 liters today',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunita",
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  bodyWidget: Lottie.asset(
                    'assets/animations/water-animation.json',
                    width: 300,
                    height: 300,
                  ),
                  height: 350,
                  width: 350,
                ),
              ],
            ),
            flexExpanded1: 4,
            expandedChild2: Column(),
            flexExpanded2: 2,
          ),
        );
      }),
    );
  }
}
