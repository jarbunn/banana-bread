import 'package:banana_bread/instructions_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {

    return Row (
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        InstructionsIdentifier(index: itemData['index'] as int, ),
        const SizedBox(width: 15),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              itemData['header'] as String, style: const TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.start,
              ),
            const SizedBox(height: 5),
            Text(
              itemData['body'] as String, style: const TextStyle(color: Color.fromARGB(255, 206, 79, 228), fontSize: 14), textAlign: TextAlign.justify
              ),
              const SizedBox(height: 10),
          ],
        ))
      ],
    );
  }
}