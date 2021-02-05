import 'package:flutter/material.dart';
import 'package:primeiro_app/app/shared/models/data/person_model.dart';
import 'package:primeiro_app/app/shared/models/data/user_model.dart';

import 'iuser_repository.dart';

class UserRepository implements IUserRepository {
  UserModel user = UserModel(nome: "Joao",email: "joao@joao",apelido: "Jo") ;
  PersonModel person = PersonModel(name: "Maria", sign: "libra", height: 1.89, age:20);


  @override
   UserModel fetchUser(){
      return user;
  }
  double fetchHeigth(){
    return person.height;
  }

  int fetchAge(){
    return person.age;
  }

  setHeigth(double heigth){
    person.height = heigth;
    debugPrint("altura ${person.height}");
  }

  setAge(int age){
    person.age = age;
    debugPrint("idade ${person.age}");
  }

  @override
  void dispose() {}

  @override
  setUser(UserModel usuario) {
    user = usuario;
  }
}
