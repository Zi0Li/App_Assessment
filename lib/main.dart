//import 'package:app_assessment/pages/home.dart';
import 'package:app_assessment/pages/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppAssessment(),
  ));
}

class AppAssessment extends StatefulWidget {
  const AppAssessment({super.key});

  @override
  State<AppAssessment> createState() => _AppAssessmentState();
}


class _AppAssessmentState extends State<AppAssessment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
