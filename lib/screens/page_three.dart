import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:web_art/widgets/appbar/custom_appbar.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    textEditingController.text =
        "I am going to use my rowing machine for 10 minutes each night between commercials as I watch the news.";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size(10.h, 8.h),
        child: CustomAppbar(
          text: "Physical Health & Self-Care goal",
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 30.h,
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17.0,
                    ),
                    child: Text(
                      "Realistic What is the next step you will adopt to achieve your goal.",
                      style: TextStyle(
                        color: const Color.fromARGB(206, 255, 255, 255),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  SizedBox(
                    width: 90.w,
                    child: TextField(
                      style: const TextStyle(
                          color: Color.fromARGB(188, 255, 255, 255)),
                      controller: textEditingController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 237, 175, 6)),
                        ),
                        border: OutlineInputBorder(),
                        labelText:
                            'Activate your Physical Health & Self-Care goal',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 237, 175, 6),
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(212, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SUBMIT",
                            style: TextStyle(
                                color: Color.fromARGB(255, 237, 175, 6)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
