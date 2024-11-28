import 'package:flutter/material.dart';
import 'package:banana_bread/start_screen.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() {
    return _RecipeState();
  }
}

class _RecipeState extends State<Recipe> {
  //Add screenWidget here to control changing screens
  //Add activeScreen variable
  //Add switchScreen function
  //Add resultsScreen function
  //Add restart recipe function

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromARGB(255, 240, 170, 0), Color.fromARGB(255, 230, 170, 80)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: const StartScreen(),
      ),
    ));
  }
}
