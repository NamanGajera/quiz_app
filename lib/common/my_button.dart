import 'package:flutter/material.dart';

import '../const/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: primaryColor1,
      ),
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
