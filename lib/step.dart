import 'package:flutter/material.dart';

class StepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
        steps: List.generate(
            10,
            (index) => Step(
                title: Text('index: $index'),
                subtitle: Text("subtitle $index"),
                content: Text('今天是2020-4-23'),
                isActive: true)),
      ),
    );
  }
}
