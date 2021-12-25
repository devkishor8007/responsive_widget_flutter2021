import 'package:flutter/material.dart';
import 'package:responsive_design_2021flutter/const.dart';

class OrientationBuilderResponsivePage extends StatelessWidget {
  const OrientationBuilderResponsivePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstant.appname),
        backgroundColor: Colors.green,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // grid with 3 and 4 columns
            // portrait and landscape mode respectively
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,

            // random item generator
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'A $index',
                  style: Theme.of(context).textTheme.caption,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
