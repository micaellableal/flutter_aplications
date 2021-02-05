// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return StudentModel(
    observacao: json['observacao'] as String,
    telefone: json['telefone'] as String,
    senha: json['senha'] as String,
  );
}

Map<String, dynamic> _$StudentModelToJson(StudentModel instance) =>
    <String, dynamic>{
      'observacao': instance.observacao,
      'telefone': instance.telefone,
      'senha': instance.senha,
    };
