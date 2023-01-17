import 'package:flutter/material.dart';

class MyPageTemplate extends StatelessWidget {
  const MyPageTemplate(
      {required this.expandedChild1,
      required this.expandedChild2,
      required this.flexExpanded1,
      required this.flexExpanded2,
      Key? key})
      : super(key: key);
  final Widget expandedChild1;
  final Widget expandedChild2;
  final int flexExpanded1;
  final int flexExpanded2;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: expandedChild1,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: expandedChild2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
