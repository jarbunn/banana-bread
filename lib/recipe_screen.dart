import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:banana_bread/data/steps.dart';

class RecipeScreen extends StatefulWidget{
  const RecipeScreen({super.key, required this.onSelectedStep});

  final void Function(int index) onSelectedStep;

  @override
  State<RecipeScreen> createState() {
    return _RecipeScreenState();
  }
}

class _RecipeScreenState extends State<RecipeScreen> {

  int currentStepIndex = 0;

  void nextStep() {
    widget.onSelectedStep(currentStepIndex);
    setState(() {
      currentStepIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentStep = ingredients[currentStepIndex];
    return SizedBox(
      child: Container (
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(currentStep.image),
            Text(currentStep.header, style: const TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            Text(currentStep.body),
            const SizedBox(height: 25),
            ElevatedButton(onPressed: nextStep, child: const Text('Next Step'),)
          ],
        ),
      ),
    );
  }
}