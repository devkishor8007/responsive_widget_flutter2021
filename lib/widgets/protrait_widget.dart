import 'package:flutter/material.dart';

Widget protraitMode(context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width,
            height: 450,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          color: Colors.pink,
          width: MediaQuery.of(context).size.width,
          height: 450,
        ),
        const SizedBox(
          height: 3,
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 450,
          ),
        ),
      ],
    );
  }
