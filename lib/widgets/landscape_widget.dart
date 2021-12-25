import 'package:flutter/material.dart';

Widget landscapeMode(context) {
  return Column(
    children: [
      Expanded(
        child: Container(
          color: Colors.blueGrey,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Expanded(
        child: Container(
          color: Colors.pink,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: 450,
        ),
      ),
      AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          color: Colors.red,
        ),
      ),
      FractionallySizedBox(
        widthFactor: 0.5,
        child: Container(
          color: Colors.green,
        ),
      ),
      FractionallySizedBox(
        widthFactor: 0.3,
        heightFactor: 0.3,
        child: Container(
          color: Colors.green,
        ),
      ),
    ],
  );
}
