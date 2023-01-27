// To parse this JSON data, do
//
//     final studentsmodel = studentsmodelFromJson(jsonString);

import 'dart:convert';

List<Studentsmodel> studentsmodelFromJson(String str) => List<Studentsmodel>.from(json.decode(str).map((x) => Studentsmodel.fromJson(x)));

String studentsmodelToJson(List<Studentsmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Studentsmodel {
    Studentsmodel({
        required this.id,
        required this.name,
        required this.age,
        required this.imageUrl,
        required this.course,
        required this.year,
    });

    int id;
    String name;
    String age;
    String imageUrl;
    String course;
    String year;

    factory Studentsmodel.fromJson(Map<String, dynamic> json) => Studentsmodel(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        imageUrl: json["imageUrl"],
        course: json["course"],
        year: json["year"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "imageUrl": imageUrl,
        "course": course,
        "year": year,
    };
}
