import 'package:book_tracker/screens/get_started_page.dart';
import 'package:book_tracker/screens/login_screen.dart';
import 'package:book_tracker/screens/page_not_found.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const PageNotFound();
          },
        );
      },
    );
  }
}
