import 'dart:ui';
import 'package:flutter/material.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget(
      {required this.titleWidget,
      required this.bodyWidget,
      this.onTap,
      this.height = 200,
      this.width = 200,
      Key? key})
      : super(key: key);
  final Widget titleWidget;
  final Widget bodyWidget;
  final double height;
  final double width;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            color: Colors.transparent,
            child: Stack(
              children: [
                //blurr
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(),
                ),
                //gradient effect
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.05),
                          Colors.white.withOpacity(0.2),
                        ]),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.13)),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        titleWidget,
                        Expanded(child: bodyWidget),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
