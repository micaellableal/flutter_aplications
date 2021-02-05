import 'package:dio/native_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/data/student_model.dart';

import 'istudent_repository.dart';


@Injectable()
class StudentRepository implements IStudentRepository {
    StudentModel study = StudentModel(observacao:"teste",telefone:"123456",senha:"1234");


    @override
    StudentModel fetchStudent(){
      return study;
    }

    @override
      setStudents(StudentModel estudante) {
      study = estudante;
      debugPrint("estudante$study");
    }
  //dispose will be called automatically
  @override
  void dispose() {}
}
