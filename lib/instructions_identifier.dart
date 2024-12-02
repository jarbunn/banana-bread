import 'package:flutter/material.dart';

class InstructionsIdentifier extends StatelessWidget{
  const InstructionsIdentifier({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final ingredientNumber = index + 1;
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(ingredientNumber.toString(), style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green
      ),),
    );
  }
}