import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(calculator());

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  var input = '';
  var output = '0';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text(
                        input,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]
              ),
              SizedBox(height:50),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text(
                        output,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]
              ),
              SizedBox(height:40),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          output = '0';
                          input = '';
                        });
                      },
                      child: Text(
                        'C',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if(input.length!=0) input = input.substring(0,input.length-1);
                        });
                      },
                      child: Icon(
                        CupertinoIcons.arrow_left,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          output+='/100';
                          Parser p = Parser();
                          Expression exp = p.parse(output);
                          ContextModel cm = ContextModel();
                          double eval = exp.evaluate(EvaluationType.REAL, cm);
                          output = eval.toString();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.percent,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input+='/';
                        });
                      },
                      child: Icon(
                        CupertinoIcons.divide,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                  ]
              ),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '7';
                        });
                      },
                      child: Text(
                        '7',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '8';
                        });
                      },
                      child: Text(
                        '8',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '9';
                        });
                      },
                      child: Text(
                        '9',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '*';
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                  ]
              ),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '4';
                        });
                      },
                      child: Text(
                        '4',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '5';
                        });
                      },
                      child: Text(
                        '5',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '6';
                        });
                      },
                      child: Text(
                        '6',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '-';
                        });
                      },
                      child: Icon(
                        CupertinoIcons.minus,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                  ]
              ),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '1';
                        });
                      },
                      child: Text(
                        '1',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '2';
                        });
                      },
                      child: Text(
                        '2',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '3';
                        });
                      },
                      child: Text(
                        '3',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '+';
                        });
                      },
                      child: Icon(
                        CupertinoIcons.plus,
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    ),
                  ]
              ),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '0';
                        });
                      },
                      child: Text(
                        '0',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          input += '.';
                        });
                      },
                      child: Text(
                        '.',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Parser p = Parser();
                          Expression exp = p.parse(input);
                          ContextModel cm = ContextModel();
                          double eval = exp.evaluate(EvaluationType.REAL, cm);
                          output = eval.toString();
                          input = output;
                        });
                      },
                      child: Text(
                        '=',
                        style: TextStyle(fontSize:30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
