import 'package:flutter/material.dart';
import 'questions_screen.dart';

import '../Global/global_data.dart';
import '../Shared/category_contained.dart';

class Categry_screen2 extends StatelessWidget {
  const Categry_screen2({super.key, required String testName, required MaterialColor themeColor, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CategoryContainer(
          testName: "Sport Test",
          containerColor: Colors.blue,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "Sport Test",
                        themeColor: Colors.blue,
                        questionsList: sportTest,
                      )),
            );
          },
        ),
        CategoryContainer(
          testName: "History Test",
          containerColor: Colors.red,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "History Test",
                        themeColor: Colors.red,
                        questionsList: historyTest,
                      )),
            );
          },
        ),
       
      ]),
    );
  }
}
