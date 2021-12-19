import 'package:flutter/material.dart';

class LayoutBuilderResponsivePage extends StatefulWidget {
  const LayoutBuilderResponsivePage({Key? key}) : super(key: key);

  @override
  _LayoutBuilderResponsivePageState createState() =>
      _LayoutBuilderResponsivePageState();
}

class _LayoutBuilderResponsivePageState
    extends State<LayoutBuilderResponsivePage> {
  String name = "Responsive Design 2021";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return one();
        } else {
          return two();
        }
      }),
    );
  }

  Widget one() {
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

  Widget two() {
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
            height: 450,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Flexible(
          child: Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 450,
          ),
        ),
      ],
    );
  }
}
