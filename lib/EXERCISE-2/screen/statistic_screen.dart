import 'package:flutter/material.dart';
import 'package:futter_term2/EXERCISE-2/model/color_counters.dart';
import 'package:provider/provider.dart';


class StatisticScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
      print("Statistic Screen build");
    return Consumer<ColorCounters>(
    builder: (context, ColorCounters, child){
      return Scaffold(
            appBar: AppBar(title: Text('Statistics')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Red Taps: ${ColorCounters.redTapCount}', style: TextStyle(fontSize: 24)),
                  Text('Blue Taps: ${ColorCounters.blueTapCount}', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
          );
        }
    );
  }
}
