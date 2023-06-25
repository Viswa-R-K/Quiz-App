

import 'package:flutter/material.dart';
import 'package:quiz/pages/home_page.dart';
import 'package:quiz/pages/leaderboard.dart';
import 'package:quiz/pages/mode_selection.dart';
import 'package:quiz/pages/quiz_page.dart';
import 'package:quiz/pages/result_page.dart';

Future<void> main() async {
  runApp( MaterialApp(
    home: const Home(),
    routes: {
  '/quiz_page' : (context) => const Quiz(),
      '/result_page' : (context) => const  ResultPage(points: 0,correctAnswers: 0,),
      '/leaderboard' : (context) => LeaderBoard(val: []),
      '/difficultyselection' : (context) => ModeSelection(),
  },
  ));
}
