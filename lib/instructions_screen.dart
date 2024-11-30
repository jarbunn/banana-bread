import 'package:flutter/material.dart';

class InstructionsScreen extends StatelessWidget{
  const InstructionsScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
            children: [Text('some text')],
        ),
      ),
    );
  }

}