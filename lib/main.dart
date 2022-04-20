
import 'package:calcuter_app/screen/cal_secreen.dart';
import 'package:calcuter_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),

      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),

        backgroundColor: Colors.white60,

        body: CalculatorScreen(),
        
      ),
    ); // MaterialApp
  } 
}


