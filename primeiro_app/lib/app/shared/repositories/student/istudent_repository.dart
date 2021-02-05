import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/data/student_model.dart';

abstract class IStudentRepository implements Disposable {

  StudentModel fetchStudent();
  setStudents(StudentModel estudante);
}
