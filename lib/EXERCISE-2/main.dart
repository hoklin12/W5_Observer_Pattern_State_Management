import 'package:flutter/material.dart';
import 'package:futter_term2/EXERCISE-2/model/color_counters.dart';
import 'package:futter_term2/EXERCISE-2/screen/home_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounters(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Home()),
      ),
    ),
  );
}