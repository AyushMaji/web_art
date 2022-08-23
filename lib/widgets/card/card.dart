import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class QuestionCard extends StatelessWidget {
  final String text;
  const QuestionCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: const AssetImage('assets/images/profile.png'),
        radius: 10.w,
      ),
      title: Text(text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
