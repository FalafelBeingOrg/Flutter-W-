import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
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
            new Text(
              '\$$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.paid),
      ), 
    );
  }
}
