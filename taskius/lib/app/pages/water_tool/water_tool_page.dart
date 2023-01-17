import 'package:flutter/material.dart';

class WaterToolPage extends StatefulWidget {
  static const routeName = '/water';
  const WaterToolPage({Key? key}) : super(key: key);

  @override
  State<WaterToolPage> createState() => _WaterToolPageState();
}

class _WaterToolPageState extends State<WaterToolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tool Page'),
        
      ),
      body: Container(),
    );
  }
}
