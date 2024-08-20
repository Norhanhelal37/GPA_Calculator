class Grades{
  
double calcpoints(int grade , int hour) {
  // double points;
  if (grade >= 95 && grade <= 100) {
    return hour * 4;
  }
  if (grade >= 90 && grade < 95) {
    return hour * 3.7;
  }
  if (grade >= 85 && grade < 90) {
    return hour * 3.3;
  }
  if (grade >= 80 && grade < 85) {
    return hour * 3.3;
  }
  if (grade >= 75 && grade < 80) {
    return hour* 2.7;
  }
  if (grade >= 70 && grade < 75) {
    return hour * 2.3;
  }
  if (grade >= 65 && grade < 70) {
    return hour * 2;
  }
  if (grade >= 60 && grade < 65) {
    return hour * 1.7;
  } else  {
    return hour * 0;
  }
}
}


double totalpoints(List<int> hours, List<String> grads) {
    Grades points = Grades();
    double total = 0;
    for (int i = 0; i < hours.length; i++) {
      total += points.calcpoints(int.parse(grads[i]), hours[i]);
    }
    return total;
  }



  int total(List<int> hours) {
    int counter = 0;
    for (int i = 0; i < hours.length; i++) {
      counter += hours[i];
    }
    return counter;
  }
