import 'package:flutter/material.dart';
import 'package:gpa_calculator/screens/display/appbar.dart';
import 'package:gpa_calculator/screens/display/display_results.dart';
import 'package:gpa_calculator/screens/display/re_calc.dart';
import 'package:gpa_calculator/screens/head.dart';
import 'package:gpa_calculator/screens/listview.dart';



class Results extends StatefulWidget {
  const Results(
      {super.key,
      required this.grades,
      required this.deg,
      required this.hours,
      required this.subjects,
      required this.allhours});
  final double grades;
  final List<String> deg;
  final int hours;
  final List<String> subjects;
  final List<int> allhours;

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 181, 224),
      appBar:const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
             const Head(),
              const SizedBox(
                height: 20,
              ),
              ListviewResult(subjects: widget.subjects, allhours: widget.allhours, deg: widget.deg),
              const SizedBox(
                height: 20,
              ),
              
              TotalResult(totalhours: widget.hours, totalgpa:(widget.grades / widget.hours).toStringAsFixed(3)),
              ReCalc(gpa: (widget.grades / widget.hours).toStringAsFixed(3)),
             
            ],
          ),
        ),
      ),
    );
  }
}
