import 'package:flutter/material.dart';
import 'score_screen.dart';

import '../Global/global_styles.dart';


class QuestionsScreen extends StatefulWidget {
  final Color? themeColor;
  final String? testName;
  final List questionsList;

  const QuestionsScreen(
      {super.key, this.themeColor, this.testName, required this.questionsList});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;
  int score = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.themeColor,
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Center(child: Text(widget.testName!)),
        title: Column(
          children: [
            const Text("Qestion No:"),
            Text("${index + 1}/${widget.questionsList.length}"),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.local_parking_outlined,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Question:",
              style: titlesStyle,
            ),
            Text(widget.questionsList[index]["question"]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              "Answers:",
              style: titlesStyle,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                 
                  children: [

                    for (int i = 0;
                        i <
                            (widget.questionsList[index]["answers"] as List)
                                .length;
                        i++)
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: widget.themeColor),
                          onPressed: () {
                            // index = index + 1;

                            score = score +
                                widget.questionsList[index]["answers"][i]
                                    ["score"] as int;

                            if (index == widget.questionsList.length - 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScoreScreen(
                                          index: index,
                                          score: score,
                                        )),
                              );
                            } else {
                              setState(() {
                                index++; 
                              });


                            }
                          },
                          child: Text(widget.questionsList[index]["answers"][i]
                              ["ans"])),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
