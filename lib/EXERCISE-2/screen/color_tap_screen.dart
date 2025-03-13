import 'package:flutter/material.dart';
import 'package:futter_term2/EXERCISE-2/model/color_counters.dart';
import 'package:futter_term2/step_3.dart';
import 'package:provider/provider.dart';


class ColorTapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('ColorTapsScreen build()');
    return Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Scaffold(
          appBar: AppBar(title: Text('Color Taps')),
          body: Column(
            children: [
              ColorTap(
                type: CardType.red,
                tapCount: colorCounters.redTapCount,
                onTap: colorCounters.incrementRedTapCount,

              ),
              ColorTap(
                type: CardType.blue,
                tapCount: colorCounters.blueTapCount,
                onTap: colorCounters.incrementBlueTapCount,
              ),
            ],
          ),
        );
      },
    );
  }
}