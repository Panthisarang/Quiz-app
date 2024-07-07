import 'package:basic_quiz_app/data/questions.dart';
import 'package:basic_quiz_app/pages/questions_screen.dart';
import 'package:basic_quiz_app/pages/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:basic_quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'Start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Question_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Question_screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 85, 22, 122),
                Color.fromARGB(255, 59, 15, 136)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
