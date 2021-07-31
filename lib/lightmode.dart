import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';
import 'slider.dart';
import 'package:math_expressions/math_expressions.dart';
class mylightmode extends StatefulWidget {
  @override
  _mylightmodeState createState() => _mylightmodeState();
}

class _mylightmodeState extends State<mylightmode> {
  String myequation = '0';
  Parser p = Parser();
  Expression exp;
  String n ='0';
  Expression converter(String mystring)
  {
    Expression expression = p.parse(mystring);
    return expression;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Scaffold(
      drawer: NavDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 300,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 150,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('$n', style: TextStyle(color: Color(0xff0189FE),decoration: TextDecoration.none,fontSize: 60))
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                      Text('$myequation', style: TextStyle(color: Colors.grey,decoration: TextDecoration.none,fontSize: 20))
                    ],)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: GridButton(borderColor: Colors.white, items: [
                  [
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= '0';
                                n='0';
                              });
                            },
                            child: Text(
                              'C',
                              style:
                              TextStyle(color: Color(0xff0189FE), fontSize: 40),
                            ),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            child: Text(
                              '+/-',
                              style:
                              TextStyle(color: Color(0xff0189FE), fontSize: 20),
                            ),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'%';
                              });
                            },
                            child: Text(
                              '%',
                              style:
                              TextStyle(color: Color(0xff0189FE), fontSize: 40),
                            ),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'/';
                              });
                            },
                            child: Text('/',
                                style: TextStyle(
                                    color: Color(0xff0189FE), fontSize: 40)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                  ],
                  [
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'7';
                              });
                            },
                            child: Text('7',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'8';
                              });
                            },
                            child: Text('8',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'9';
                              });
                            },
                            child: Text('9',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'*';
                              });
                            },
                            child: Text('x',
                                style: TextStyle(
                                    color: Color(0xff0189FE), fontSize: 40)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                  ],
                  [
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'4';
                              });
                            },
                            child: Text('4',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'5';
                              });
                            },
                            child: Text('5',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'6';
                              });
                            },
                            child: Text('6',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'-';
                              });
                            },
                            child: Text('-',
                                style: TextStyle(
                                    color: Color(0xff0189FE), fontSize: 40)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                  ],
                  [
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'1';
                              });
                            },
                            child: Text('1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'2';
                              });
                            },
                            child: Text('2',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'3';
                              });
                            },
                            child: Text('3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'+';
                              });
                            },
                            child: Text('+',
                                style: TextStyle(
                                    color: Color(0xff0189FE), fontSize: 40)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                  ],
                  [
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                            onPressed: (){
                              setState(() {
                                myequation= myequation+'0';
                              });
                            },
                            child: Text('0',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              myequation= myequation+'.';
                            });
                          },
                            child: Text('.',
                                style: TextStyle(
                                    color: Color(0xff0189FE), fontSize: 40)),
                            elevation: 10.0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                            )),
                      ),
                    ),
                    GridButtonItem(
                        child: Container(
                          height: 70,
                          width: 70,
                          child: FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  myequation= myequation.substring(0,myequation.length-1);
                                });
                              },
                              child: Icon(
                                Icons.backspace,
                                color: Color(0xff0189FE),
                              ),
                              elevation: 10.0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                              )),
                        )),
                    GridButtonItem(
                        child: Container(
                          height: 70,
                          width: 70,
                          child: FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  exp = converter(myequation);
                                  //print(exp);
                                  n = exp.evaluate(EvaluationType.REAL, null).toStringAsPrecision(6);
                                });
                              },
                              child: Text('=',
                                  style:
                                  TextStyle(color: Color(0xff0189FE), fontSize: 40)),
                              elevation: 10.0,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                              )),
                        )),
                  ]
                ]),
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    ));
  }
}

