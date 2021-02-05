// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return PersonModel(
    name: json['name'] as String,
    age: json['age'] as int,
    sign: json['sign'] as String,
    height: (json['height'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'sign': instance.sign,
      'height': instance.height,
    };
