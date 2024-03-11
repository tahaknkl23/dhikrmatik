import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/zikirmatik.png",
                  width: 300,
                ),
                Positioned(top: 60, right: 70, child: _counterText()),
                Positioned(
                  bottom: 30,
                  child: _incrementButton(),
                ),
                _resetButton()
              ],
            )
          ],
        ),
      ),
    );
  }

  Positioned _resetButton() {
    return Positioned(
      right: 75,
      bottom: 115,
      child: GestureDetector(
        onTap: () => _resetCounter(),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () {
        _incrementCounter();
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  Text _counterText() => Text(_counter.toString(), style: const TextStyle(fontSize: 50, fontFamily: 'Digital-7', color: Colors.white));
}
