import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/cell.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Cell(
          title: "Course Name",
        ),
        Spacer(flex: 3),
        Cell(
          title: "Credits",
        ),
        Spacer(flex: 3),
        Cell(
          title: "Grade",
        ),
        Spacer()
      ],
    );
  }
}
