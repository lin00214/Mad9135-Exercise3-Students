class Students {
  List<Map<String, dynamic>> people;

  Students(List<Map<String, dynamic>> this.people);

  sort(String fieldName){
    people.sort((first, second) {
      var firstStudent = first[fieldName];
      var secondStudent = second[fieldName];

      if (fieldName == 'id') {
        return firstStudent.compareTo(secondStudent);
      } else if (fieldName == "first" || fieldName == "last" || fieldName == "email") {
        return firstStudent.toString().compareTo(secondStudent.toString());
      } else {
        return firstStudent.compareTo(secondStudent);
      }
    })

    output();
  }

  output(){
    for (var i = 0; i < people.length; i++) {
      var student = people[i];

      for (var key in student.keys) {
        print("$key: ${student[key]}");
      }
    }
  }

  plus(Map<String, dynamic> student) {
    people.add(student);

    output();
  }

  remove(String fieldName){
    for (var student in people) {
      student.remove(fieldName);
    }

    output();
  }
}