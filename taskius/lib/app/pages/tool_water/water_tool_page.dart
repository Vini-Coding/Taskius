import 'package:flutter/material.dart';
import 'package:taskius/app/pages/tool_water/water_tool_controller.dart';
import 'package:provider/provider.dart';

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
      child: Consumer<WaterToolController>(
        builder: (context, controller, _) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Water Tool Page'),
              
            ),
            body: Container(),
          );
        }
      ),
    );
  }
}
