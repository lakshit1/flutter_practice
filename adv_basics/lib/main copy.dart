import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.purple,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  height: 300,
                  'assets/images/quiz-logo.png',
                ),
                const Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    'Learn Flutter the Fun Way!'),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Colors.purpleAccent,
                    ),
                  ),
                  onPressed: () {
                    print('Button pressed');
                  },
                  child: const Text(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      'Start'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
