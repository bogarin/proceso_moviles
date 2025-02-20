import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter screen'),
        leading: IconButton(
            onPressed: () {
              setState(() {
                _clickCounter = 0;
              });
              setState(() {
                _clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          const Text(
            "Clicks",
            style: TextStyle(fontSize: 25),
          ),
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  _clickCounter++;
                });
              },
              child: const Icon(Icons.add)),
          const SizedBox(height: 22),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  _clickCounter--;
                });
              },
              child: const Icon(Icons.remove)),
          const SizedBox(height: 22),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  _clickCounter = 0;
                });
              },
              child: const Icon(Icons.delete)),
        ],
      ),
    );
  }
}
