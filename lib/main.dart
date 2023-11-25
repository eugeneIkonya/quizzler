import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: QuizPage(),
            ),
          ))),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'This is where text will go',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.add(const Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.add(const Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
