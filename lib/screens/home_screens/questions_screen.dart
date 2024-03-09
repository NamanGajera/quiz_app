import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/const/colors.dart';
import 'package:quiz_app/screens/home_screens/que_list.dart';

import '../../common/question_option.dart';
import 'result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  int seconds = 15;
  Timer? timer;
  var currentQueIndex = 0;
  int? selectedOption;
  int score = 0;
  var optionColor = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  resetColor() {
    optionColor = [
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
    ];
  }

  startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else if (seconds == 0) {
          // timer.cancel();
          seconds = 15;
          currentQueIndex++;
          if (currentQueIndex > 9) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const ResultScreen()),
                (route) => route.isFirst);
            currentQueIndex = 0;
            seconds = 15;
            timer.cancel();
          }
        } else {
          timer.cancel();
        }
      });
    });
  }

  void countScore(int value) {
    setState(() {
      selectedOption = value;
      final hrquestion = hrquestionsList[currentQueIndex];
      if (selectedOption == hrquestion.correctAnswerIndex) {
        score++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final hrquestion = hrquestionsList[currentQueIndex];
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor1,
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      // Timer
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            '$seconds',
                            style: const TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: CircularProgressIndicator(
                              value: seconds / 15,
                              valueColor:
                                  const AlwaysStoppedAnimation(primaryColor2),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // Question text
                      Text(
                        '${currentQueIndex + 1} : ${hrquestion.question}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 40),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                countScore(index);
                                if (hrquestion.correctAnswerIndex == index) {
                                  optionColor[index] = Colors.green;
                                } else {
                                  optionColor[index] = Colors.red;
                                }

                                if (currentQueIndex < 9) {
                                  Future.delayed(Duration(milliseconds: 800),
                                      () {
                                    currentQueIndex++;
                                    resetColor();
                                    timer!.cancel();
                                    seconds = 15;
                                    startTimer();
                                  });
                                } else {
                                  timer!.cancel();
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ResultScreen()),
                                      (route) => route.isFirst);
                                }
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 20),
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: optionColor[index]),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  hrquestion.options[index],
                                  style: const TextStyle(fontSize: 19),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 20);
                          },
                          itemCount: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
