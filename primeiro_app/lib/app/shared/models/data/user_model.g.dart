// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    nome: json['nome'] as String,
    email: json['email'] as String,
    apelido: json['apelido'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'nome': instance.nome,
      'email': instance.email,
      'apelido': instance.apelido,
    };
