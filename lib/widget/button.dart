
import 'package:flutter/material.dart';

class CalulButtons extends StatelessWidget {

  final String text;
  final Color fillColor;
  final Color textColor;
  double textSize;
  final Function onpress;

  CalulButtons({
  required this.text ,
  required this.fillColor ,
   required this.textSize ,
   required this.textColor , 
   required this.onpress});
  

  @override
  Widget build(BuildContext context) {
    return Container(
          child: SizedBox(
              width: 70,
              height: 70,
              child: InkWell(
                onTap: () => onpress(text),
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(text,style: TextStyle(fontSize: 24 , color: textColor),),
                  color: fillColor,
                ),   
              ),
          ),   
    );
  }
}