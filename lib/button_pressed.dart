import 'package:flutter/material.dart';

class BtnPressed extends StatefulWidget {
  const BtnPressed({super.key});

  @override
  State<BtnPressed> createState() => _BtnPressedState();
}

class _BtnPressedState extends State<BtnPressed> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Button Pressed:'),
            Text("$count"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
