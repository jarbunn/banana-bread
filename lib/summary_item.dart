import 'package:banana_bread/instructions_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {

    return Row (
      children: [
        InstructionsIdentifier(index: itemData['index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['body'] as String, style: const TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 16)
              ),
          ],
        ))
      ],
    );
  }
}