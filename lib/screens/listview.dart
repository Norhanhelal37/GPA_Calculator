import "package:flutter/material.dart";
import "package:gpa_calculator/screens/display/display_degree.dart";
import "package:gpa_calculator/screens/display/display_hour.dart";
import "package:gpa_calculator/screens/display/display_subject.dart";

class ListviewResult extends StatelessWidget {
  const ListviewResult({super.key, required this.subjects, required this.allhours, required this.deg});
  final List<String> subjects;
  final List<int> allhours;
  final List<String> deg;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(flex: 2, child: Subject(subj: subjects[index])),
              const SizedBox(
                width: 30,
              ),
              Expanded(child: Cridet(hour:allhours[index])),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: Degree(degree: deg[index]),
              )
            ],
          );
        });
  }
}
