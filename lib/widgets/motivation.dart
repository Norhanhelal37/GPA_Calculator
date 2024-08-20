String motivation(String gpa) {
    if (double.parse(gpa) >= 3.00 && double.parse(gpa) < 3.4) {
      return "شطور";
    } else if (double.parse(gpa) >= 3.5) {
      return "عظمه والله";
    } else if (double.parse(gpa) >= 2.0 && double.parse(gpa) < 3.0) {
      return "اشتغل علي نفسك شويه يا بطل";
    } else {
      return "حاول الموضوع محتاج جهد";
    }
  }






  