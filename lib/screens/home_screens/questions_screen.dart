import 'package:flutter/material.dart';
import 'package:quiz_app/const/colors.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor1,
          title: Text(
            title,
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
                decoration: BoxDecoration(
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
                        height: 30,
                      ),
                      Text(
                        'How can you handle your posioton in company?',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 40),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 20),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'A : Do the Good Work',
                          style: TextStyle(fontSize: 19),
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
