import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel introPageWidget({
  required String title,
  required String body,
  required String imagePath,
}) {
  return PageViewModel(
    decoration: const PageDecoration(imagePadding: EdgeInsets.only(top: 80)),
    reverse: false,
    titleWidget: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(
        title,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 93, 0, 255)),
      ),
    ),
    body: body,
    image: Image.asset(imagePath, height: 400, width: 400,),
  );
}
