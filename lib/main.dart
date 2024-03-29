import 'package:flutter/material.dart';
import 'package:quizzappmodelclass/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home:const  Scaffold(
        body: QuizzApp()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
