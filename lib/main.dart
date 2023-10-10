import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Increment',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
    const    SizedBox(height: 24), // Add spacing here
        Text(
          'Count: $_counter',
          style: const TextStyle(fontSize: 40),
        ),
    const    SizedBox(height: 24), // Add more spacing here
        ElevatedButton(
          onPressed: _reset,
          child: const Text(
            'Reset',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          body: Center(
            child: Counter(),
          ),
        ),
      ),
    ),
  );
}
