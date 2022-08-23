import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:web_art/screens/page_three.dart';
import 'package:web_art/widgets/appbar/custom_appbar.dart';
import 'package:web_art/widgets/btn/custom_btn.dart';
import 'package:web_art/widgets/card/card.dart';

class PageTwo extends StatefulWidget {
  final int feelData;
  const PageTwo({Key? key, required this.feelData}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String iteamData = "Select Item";
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
    ];
    String? selectedValue;
    TextEditingController textEditingController = TextEditingController();
    textEditingController.text =
        "Full of possibilities, ideas and a vision for how they can be achieved.";
    return Scaffold(
      bottomNavigationBar: CustomBtn(
        onPressed: () {
          Get.to(const PageThree());
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size(8.h, 8.h),
        child: CustomAppbar(
          onPressed: () {
            Get.back();
          },
          text: 'Back',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 2.5.h),
          const QuestionCard(
              text:
                  "Use the free text box below to type a statement that describes what you feel when you look at this picture."),
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 65.w,
                  child: TextField(
                    controller: textEditingController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'This section is optional',
                    ),
                  ),
                ),
                Container(
                  height: 12.h,
                  width: 22.w,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color.fromRGBO(181, 0, 0, 1),
                        width: 2,
                      ),
                      color: const Color.fromARGB(19, 181, 0, 0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/${widget.feelData}.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          const QuestionCard(
              text:
                  "Choose one word from the list below that best captures what you have described above."),
          SizedBox(height: 5.h),
          CustomDropdownButton2(
            buttonWidth: 90.w,
            buttonHeight: 8.h,
            dropdownWidth: 90.w,
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: const Color.fromARGB(122, 36, 1, 1),
                width: 2,
              ),
              color: const Color.fromARGB(19, 255, 255, 255),
            ),
            hint: iteamData,
            dropdownItems: items,
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
                iteamData = value!;
              });
            },
          ),
        ]),
      ),
    );
  }
}
