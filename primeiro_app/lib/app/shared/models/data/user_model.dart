import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String nome;
  String email;
  String apelido;

  UserModel({this.nome, this.email, this.apelido});

  @override
  String toString() {
    return 'UserModel{nome: $nome, email: $email, apelido: $apelido}';
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
