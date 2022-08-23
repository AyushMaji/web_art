import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CustomAppbar extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const CustomAppbar({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 8.h,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(149, 6, 34, 1),
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      backgroundColor: const Color.fromRGBO(149, 6, 34, 1),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: onPressed,
      ),
      title: Text(text),
    );
  }
}
