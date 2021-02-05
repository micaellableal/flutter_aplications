import 'package:json_annotation/json_annotation.dart';

part 'student_model.g.dart';

@JsonSerializable()
class StudentModel {
  String observacao;
  String telefone;
  String senha;

  StudentModel({this.observacao,this.telefone, this.senha});

  @override
  String toString() {
    return 'StudentModel{observacao: $observacao,telefone: $telefone, senha: $senha}';
  }

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);

  Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}
