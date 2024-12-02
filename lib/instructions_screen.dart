import 'package:banana_bread/data/steps.dart';
import 'package:banana_bread/instructions_summary.dart';
import 'package:flutter/material.dart';

class InstructionsScreen extends StatelessWidget{
  const InstructionsScreen({super.key});

  List<Map<String, Object>> get summaryData {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < ingredients.length;i++) {
      summary.add({
        'index': i,
        'step': ingredients[i],
        'body': ingredients[i].body
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InstructionsSummary(summaryData)
              ],
        ),
      ),
    );
  }

}