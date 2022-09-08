
import 'package:flutter/material.dart';
import 'package:prominatask/screens/firsPageScreen/firstPage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,  deviceType) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'prominaTask',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FirstPageScreen(),
        );
      },
    );
  }
}

