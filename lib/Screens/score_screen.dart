import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int index;
  final int score;
  const ScoreScreen({super.key, required this.index, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: const TextStyle(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: userNameTextEditingControllrt.text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 33, 11, 224)),
                  ),
                  const TextSpan(
                    text: ', your Score is ',
                  ),
                  TextSpan(
                    text: '$score /${index + 1} ',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 33, 11, 224)),
                  ),
                ],
              ),
            ), 

            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OpeningScreen()),
                  );
                },
                child: const Text("Guidance again"))
          ],
        ),
      ),
    ));
  }
}
