import 'package:flutter/material.dart';
import 'package:futter_term2/EXERCISE-2/model/color_counters.dart';
import 'package:futter_term2/EXERCISE-2/screen/color_tap_screen.dart';
import 'package:futter_term2/EXERCISE-2/screen/statistic_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Home Build");
    return Consumer<ColorCounters>(
      builder: (context, colorCounters, child){
        return Scaffold(
          body: colorCounters.currentIndex == 0 ? ColorTapScreen(): StatisticScreen(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: colorCounters.currentIndex,
            onTap: (index) {
              colorCounters.updateIndex(index);
              print('Bottom Navigation Index: ${colorCounters.currentIndex}');

            },

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.tap_and_play),
                label: 'Taps',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Statistics',
              ),
            ],
          ),
        );
      }
    );
  }
}
