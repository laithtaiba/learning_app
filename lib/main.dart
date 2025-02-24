import 'package:flutter/material.dart';
import 'package:learning_app/pages/course.dart';
import 'package:learning_app/pages/filterpage.dart';
import 'package:learning_app/pages/firstpage.dart';
import 'package:learning_app/pages/instructor.dart';
import 'package:learning_app/pages/wishlist.dart';

Future<void> main(List<String> args) async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "FirstPage",
      routes: {
        "MyCourse": (context) => const MyCourse(),
        "Instructor": (context) => const InstructorPage(),
        "FilterPage": (context) => const FilterPage(),
        "FavoritePage": (context) => WishList(),
        "FirstPage": (context) => const FirstPage(),
      },
    );
  }
}
