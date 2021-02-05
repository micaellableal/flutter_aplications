import 'package:json_annotation/json_annotation.dart';

part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  String name;
  int age;
  String sign;
  double height;


  PersonModel({this.name, this.age, this.sign, this.height});


  @override
  String toString() {
    return 'PersonModel{name: $name, age: $age, sign: $sign, height: $height}';
  }

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}
