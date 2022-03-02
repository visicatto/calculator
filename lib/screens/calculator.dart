import 'package:calculator/components/keybord.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: const [
          Display(
            text: '123.45',
          ),
          Keybord(),
        ],
      ),
    );
  }
}
