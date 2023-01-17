import 'dart:ui';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
    HomeCardWidget(
      {required this.title,
      required this.subtitle,
      required this.imagePath,
      required this.onTap,
      Key? key})
      : super(key: key);
  final String title;
  final String subtitle;
  final String imagePath;
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
            height: 200,
            width: 200,
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
                        Tab(
                          icon: Image.asset(
                            imagePath,
                          ),
                          height: 75,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: "Nunita",
                          ),
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            fontFamily: "Nunita",
                          ),
                        ),
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
