import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomBtn({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(222, 185, 136, 1), // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('CONTINUE'),
            ],
          ),
        ),
      ),
    );
  }
}
