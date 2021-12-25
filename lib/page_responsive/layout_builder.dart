import 'package:flutter/material.dart';
import 'package:responsive_design_2021flutter/const.dart';
import 'package:responsive_design_2021flutter/widgets/protrait_widget.dart';
import 'package:responsive_design_2021flutter/widgets/landscape_widget.dart';

class LayoutBuilderResponsivePage extends StatefulWidget {
  const LayoutBuilderResponsivePage({Key? key}) : super(key: key);

  @override
  _LayoutBuilderResponsivePageState createState() =>
      _LayoutBuilderResponsivePageState();
}

class _LayoutBuilderResponsivePageState
    extends State<LayoutBuilderResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstant.appname),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return protraitMode(context);
        } else {
          return landscapeMode(context);
        }
      }),
    );
  }
}
