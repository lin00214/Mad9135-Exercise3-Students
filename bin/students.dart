import 'package:students/students.dart';
import 'dart:convert' as convert;

void main() {

  String json = '''
[
  {"id":1, "first":"Anna", "last":"Lin", "email":"anna@outlook.com", "age": 14},
  {"id":2, "first":"Mia", "last":"Dursley", "email":"mia@outlook.com", "age": 32},
  {"id":3, "first":"Mike", "last":"Filch", "email":"mike@outlook.com", "age": 28},
  {"id":4, "first":"Freya", "last":"Nolan", "email":"freya@outlook.com", "age": 46},
  {"id":5, "first":"Coral", "last":"Mary", "email":"coral@outlook.com", "age": 18}
]
''';

  List<Map<String, dynamic>> list = (convert.jsonDecode(json) as List).map((item) => Map<String, dynamic>.from(item)).toList();
  var students = Students(list);

  students.sort("first");
  print("");
  // students.sort("last");
  // print("");
  // students.sort("email");
  // print("");
  // students.sort("age");
  // print("");

  print("Add a new student information:");
  students.plus({
    "id": 6,
    "first": "Oliver",
    "last": "Wood",
    "email": "oliver@outlook.com",
    "age": 42,
  });
  print("");

  print("Remove students' last name:");
  students.remove("last");
}
