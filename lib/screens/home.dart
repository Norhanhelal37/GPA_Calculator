import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpa_calculator/screens/display/appbar.dart';
import 'package:gpa_calculator/screens/grades_fields.dart';
import 'package:gpa_calculator/screens/head.dart';
import 'package:gpa_calculator/screens/hours_field.dart';
import 'package:gpa_calculator/screens/results.dart';
import 'package:gpa_calculator/screens/subject_field.dart';
import 'package:gpa_calculator/widgets/clc_grade.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double points = 0;
  int totalhoures = 0;
  List<int> houres = [];
  List<String> grades = [];
  List<String> subjet = [];
  bool badInfo = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 143, 181, 224),
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SubjectField(
                            data: subjet,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(child: HoursField(hours: houres)),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(child: GradesFields(grades: grades))
                      ],
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              (!badInfo)
                  ? Container(
                      width: MediaQuery.sizeOf(context).width * .4,
                      decoration: BoxDecoration(
                          color: const Color(0xff03045E),
                          gradient: LinearGradient(colors: [
                            const Color(0xff03045E),
                            const Color(0xff03045E).withOpacity(.4)
                          ]),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: TextButton(
                        onPressed: () {
                          if (subjet.isEmpty ||
                              houres.isEmpty ||
                              grades.isEmpty) {
                            setState(() {
                              badInfo = true;
                            });
                          } else {
                            setState(() {
                              badInfo = false;
                            });
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                             
                              return Results(
                                grades: totalpoints(houres, grades),
                                deg: grades,
                                subjects: subjet,
                                hours: total(houres),
                                allhours: houres,
                              );
                            }));
                          }
                        },
                        child: Text(
                          "Calcualte",
                          style: GoogleFonts.caveat(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 30),
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        Text(
                          "You must enter Data",
                          style: GoogleFonts.caveat(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * .4,
                          decoration: BoxDecoration(
                              color: const Color(0xff03045E),
                              gradient: LinearGradient(colors: [
                                const Color(0xff03045E),
                                const Color(0xff03045E).withOpacity(.4)
                              ]),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: TextButton(
                            onPressed: () {
                              if (subjet.isEmpty ||
                                  houres.isEmpty ||
                                  grades.isEmpty) {
                                setState(() {
                                  badInfo = true;
                                });
                              } else {
                                setState(() {
                                  badInfo = false;
                                });
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  
                                  return Results(
                                    grades: totalpoints(houres, grades),
                                    deg: grades,
                                    subjects: subjet,
                                    hours: total(houres),
                                    allhours: houres,
                                  );
                                }));
                              }
                            },
                            child: Text(
                              "Calcualte",
                              style: GoogleFonts.caveat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 30),
                            ),
                          ),
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
