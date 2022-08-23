import 'dart:developer';

import '../utils/barrel.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int feelData = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBtn(
        onPressed: () {
          Get.to(() => PageTwo(
                feelData: feelData,
              ));
        },
      ),
      appBar: PreferredSize(
        preferredSize: Size(8.h, 8.h),
        child: CustomAppbar(
          text: 'Back',
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 3.h),
            const QuestionCard(
                text:
                    'Choose one picture that represents how you feel about life today.'),
            SizedBox(height: 3.h),
            ResponsiveGridList(
                scroll: false,
                desiredItemWidth: 70,
                minSpacing: 15,
                shrinkWrap: true,
                children: [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                ].map((i) {
                  return SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          feelData = i;
                          log(feelData.toString());
                          log(feelData.toString());
                        });
                      },
                      child: Container(
                        height: 11.h,
                        alignment: const Alignment(0, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: feelData == i
                                ? const Color.fromRGBO(181, 0, 0, 1)
                                : Colors.transparent,
                            width: 1,
                          ),
                          color: feelData == i
                              ? const Color.fromARGB(19, 181, 0, 0)
                              : Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset('assets/images/$i.png'),
                        ),
                      ),
                    ),
                  );
                }).toList()),
            SizedBox(height: 7.h),
          ],
        ),
      ),
    );
  }
}
