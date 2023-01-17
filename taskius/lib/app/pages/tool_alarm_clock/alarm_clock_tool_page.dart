import 'package:flutter/material.dart';

class AlarmClockToolPage extends StatefulWidget {
  static const routeName = 'alarm';
  const AlarmClockToolPage({Key? key}) : super(key: key);

  @override
  State<AlarmClockToolPage> createState() => _AlarmClockToolPageState();
}

class _AlarmClockToolPageState extends State<AlarmClockToolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alarm Clock Tool Page',
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(),
    );
  }
}
