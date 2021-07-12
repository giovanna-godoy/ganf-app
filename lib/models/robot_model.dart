import 'dart:convert';

class RobotModel {
  int id;
  String name;
  int age;
  String image;
  String description;

  RobotModel({
    this.id,
    this.name,
    this.age,
    this.image,
    this.description,
  });

  factory RobotModel.fromJson(String str) =>
      RobotModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RobotModel.fromMap(Map<String, dynamic> json) => RobotModel(
        id: (json["id"] is int) ? json["id"] : int.parse(json["id"]),
        name: json["name"],
        age: json["age"].toInt(),
        image: json["image"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "age": age,
        "image": image,
        "description": description,
      };
}
