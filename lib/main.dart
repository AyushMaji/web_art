import 'package:web_art/screens/page_one.dart';

import 'utils/barrel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Web Hub',
          home: PageOne(),
        );
      },
    );
  }
}
