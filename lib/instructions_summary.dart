import 'package:flutter/material.dart';
import 'package:banana_bread/summary_item.dart';

class InstructionsSummary extends StatelessWidget{
  const InstructionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;


  @override
  Widget build(context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
              return SummaryItem(data);
          },
          ).toList(),
        ),
      ),
    );
  }
}