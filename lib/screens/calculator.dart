import 'package:calculator/components/keybord.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

final Memory memory = Memory();

class _CalculatorState extends State<Calculator> {
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(
            memory.value,
            text: memory.value,
          ),
          Keybord(
            _onPressed,
            cb: _onPressed,
          ),
        ],
      ),
    );
  }
}
