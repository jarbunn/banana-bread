import 'package:flutter/material.dart';

//needs to inheirt startQuiz function aka sending switchScreen to start recipe

class StartScreen extends StatelessWidget {
  const StartScreen(this.startRecipe, {super.key});

  final void Function() startRecipe;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/carbohydrates.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text('Learn to make Banana Bread!',
              style: TextStyle(fontSize: 24, color: Colors.black)),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startRecipe,
            style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.white)),
            label: const Text('Lets Begin!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            icon: const Icon(Icons.start, color: Colors.white,),
            iconAlignment: IconAlignment.end,
          )
        ],
      ),
    );
  }
}
