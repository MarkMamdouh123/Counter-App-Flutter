import 'package:flutter/material.dart';

int counter = 1;

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'Counter',
              style: TextStyle(
                  fontSize: 22g,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text(
                  'Plus',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '$counter',
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    if (counter == 0) {
                      return;
                    }
                    counter--;
                  });
                },
                child: const Text(
                  'Minus',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
