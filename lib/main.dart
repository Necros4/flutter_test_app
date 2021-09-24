import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  final math.Random _random = math.Random();
  Color _color = Colors.white;
  Color _colorAppBar = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task Flutter app',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: _colorAppBar,
          )),
      home: Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          title: const Text('Test task Flutter app'),
          leading: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => setState(() {
              _colorAppBar = generateColor();
            }),
            child: const Icon(
              Icons.brush,
            ),
            )
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => setState(() {
            _color = generateColor();
          }),
          child: const Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
   Color generateColor() {
    return Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
  }
}

