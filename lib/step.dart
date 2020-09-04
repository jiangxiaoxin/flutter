import 'package:flutter/material.dart';

class StepPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
        steps: <Step>[
          Step(
              title: Text('2020-4-23'),
              subtitle: Text("subtitle"),
              content: Text('今天是2020-4-23'),
              isActive: true),
          Step(title: Text('2020-4-24'), content: Text('今天是2020-4-24')),
          Step(title: Text('2020-4-25'), content: Text('今天是2020-4-25')),
        ],
      ),
    );
  }
}
