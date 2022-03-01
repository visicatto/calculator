import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: const [
          Display(
            text: '123.45',
          ),
          Text('Keybord'),
        ],
      ),
    );
  }
}
