
import 'package:flutter/material.dart';

import '../widget/button.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScrennsState createState() => _CalculatorScrennsState();
}

class _CalculatorScrennsState extends State<CalculatorScreen> {


  late int _firstNumber ;
  late int _scondeNumber;
  String _textDisplay = '';
  String _result = '0' ;
  String? _operation;
  late String _histroy = '';

  void btnClick(String value){

    if(value == "C"){
  
      _textDisplay = '';
      _result ='';
      _operation = '';
      _histroy = '';
      _firstNumber = 0;
      _scondeNumber = 0;
 
    }else if(value == "+" || value == "/" || value == "-" || value == "X"){
  
     _firstNumber = int.parse(_textDisplay);
      _result = '';
      _operation = value;

    }else if(value == '='){
        _scondeNumber = int.parse(_textDisplay);
          
           if(_operation == '+'){
              _result = (_firstNumber + _scondeNumber).toString();
              _histroy = _firstNumber.toString() + _operation.toString() + _scondeNumber.toString();
           }
            if(_operation == '-'){
              _result = (_firstNumber - _scondeNumber).toString();
              _histroy = _firstNumber.toString() + _operation.toString() + _scondeNumber.toString();
           }
            if(_operation == 'X'){
              _result = (_firstNumber * _scondeNumber).toString();
              _histroy = _firstNumber.toString() + _operation.toString() + _scondeNumber.toString();
           }
            if(_operation == '/'){
              _result = (_firstNumber / _scondeNumber).toString();
              _histroy = _firstNumber.toString() + _operation.toString() + _scondeNumber.toString();
           }
      }else{
        _result = int.parse(_textDisplay + value).toString();
      }

      setState(() {
        _textDisplay = _result;
      });

}
  

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(_histroy,style: TextStyle(fontSize: 24,color: Colors.black26,),),
                ),
                alignment: Alignment(1.0, 1.0),
              ),

              SizedBox(height: 10),

             Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(_textDisplay,style: TextStyle(fontSize: 35,color: Color(0xFF545F61),),),
                ),
                alignment: Alignment(1.0, 1.0),
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalulButtons(
                    text: '%',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: 'C',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '<',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '/',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                ],
              ),

              SizedBox(height: 10,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalulButtons(
                    text: '7',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '8',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '9',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: 'X',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                ],
              ),

              SizedBox(height: 10,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalulButtons(
                    text: '4',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '5',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '6',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '-',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                ],
              ),

              SizedBox(height: 10,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalulButtons(
                    text: '1',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '2',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '3',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '+',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                ],
              ),

              SizedBox(height: 10,),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalulButtons(
                    text: '0',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '00',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '.',
                    fillColor: Colors.black12,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                   CalulButtons(
                    text: '=',
                    fillColor: Colors.grey,
                    textColor: Colors.black,
                    textSize: 12.0,
                    onpress: btnClick,
                  ),
                ],
              )

            ]
          ),
        );
  }
}