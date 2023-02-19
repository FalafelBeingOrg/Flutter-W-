import 'dart:developer';

import 'package:flutter/material.dart';
GlobalKey<_MyHomePageState> globalKey = GlobalKey();
double _size = 1.0;
bool _large = false;
int _counter = 0;

final MoneText monetextinstance = new MoneText();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo for Mom',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFAAD401, const{
           50 : const Color(0xFFAAD401),
          100 : const Color(0xFFAAD401),
          200 : const Color(0xFFAAD401),
          300 : const Color(0xFFAAD401),
          400 : const Color(0xFFAAD401),
          500 : const Color(0xFFAAD401),
          600 : const Color(0xFFAAD401),
          700 : const Color(0xFFAAD401),
          800 : const Color(0xFFAAD401),
          900 : const Color(0xFFAAD401)
        })
      ),
      home: new MyHomePage(title:"Tim and Dans Flutter App"),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  bool isLarge = false;
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  Widget build(BuildContext context) {
  
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Mone:',
            ),
            monetextinstance,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            _large = !_large;
           _incrementCounter();
           },
        tooltip: 'Increment',
        child: const Icon(Icons.paid),
      ), 
    );
  }
}

class MoneText extends StatefulWidget{
  
  const MoneText({super.key});
  
  
  @override
  State<MoneText> createState() => _MoneTextState();

}

class _MoneTextState extends State<MoneText> {
  

  void _getBig() {
    setState(() {
      _size = _large ? 2.0 : 1.0;
      _large = !_large;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(curve: Curves.easeIn,
      duration: const Duration(seconds: 1),
      child: Text("\$$_counter", textScaleFactor: _size,),
      );
  }

  
  
}