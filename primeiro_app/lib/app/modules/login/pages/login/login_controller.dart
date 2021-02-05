import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/data/person_model.dart';
import 'package:primeiro_app/app/shared/models/data/student_model.dart';
import 'package:primeiro_app/app/shared/models/data/user_model.dart';
import 'package:primeiro_app/app/shared/repositories/student/istudent_repository.dart';
import 'package:primeiro_app/app/shared/repositories/user/iuser_repository.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  IUserRepository _userRepository = Modular.get();
  UserModel currentUser = UserModel();
  int idade ;
  double altura ;

  IStudentRepository _studentRepository = Modular.get();
  StudentModel students = StudentModel();


  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController apelidoController = TextEditingController();
  TextEditingController segundoNomeController = TextEditingController();
  TextEditingController observacaoController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController heigthController = TextEditingController();


  _LoginControllerBase() {
    nomeController.addListener(() {
      currentUser.nome = nomeController.text;
    });
    emailController.addListener(() {
      currentUser.email = emailController.text;
    });
    apelidoController.addListener(() {
      currentUser.apelido = apelidoController.text;
    });
    telefoneController.addListener(() {
      students.telefone = telefoneController.text;
    });
    observacaoController.addListener(() {
      students.observacao = observacaoController.text;
    });
    senhaController.addListener(() {
      students.senha = senhaController.text;
    });
    ageController.addListener(() {
      idade = int.parse(ageController.text);
    });
    heigthController.addListener(() {
      altura = double.parse(heigthController.text);
    });
  }




  setStudent(){
    _studentRepository.setStudents(students);
  }

  setAge(){
    _userRepository.setAge(idade);
  }
  setHeigth(){
    _userRepository.setHeigth(altura);
  }

  setUser(){
    _userRepository.setUser(currentUser);
    setAge();
    setHeigth();
  }

  setData() {
    UserModel teste = _userRepository.fetchUser();
    StudentModel study = _studentRepository.fetchStudent();
    double heigth = _userRepository.fetchHeigth();
    int age = _userRepository.fetchAge();

    if(study ==null){
      return;
    }
    if (teste == null) {
      return;
    }
    nomeController.text = teste.nome;
    emailController.text = teste.email;
    apelidoController.text = teste.apelido;
    telefoneController.text = study.telefone;
    observacaoController.text = study.observacao;
    senhaController.text = study.senha;
    ageController.text = age.toString();
    heigthController.text = heigth.toString();
  }


}
