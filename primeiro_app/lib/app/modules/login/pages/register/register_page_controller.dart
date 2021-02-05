import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/data/student_model.dart';
import 'package:primeiro_app/app/shared/models/data/user_model.dart';
import 'package:primeiro_app/app/shared/repositories/student/istudent_repository.dart';
import 'package:primeiro_app/app/shared/repositories/user/iuser_repository.dart';

part 'register_page_controller.g.dart';

@Injectable()
class RegisterPageController = _RegisterPageControllerBase
    with _$RegisterPageController;

abstract class _RegisterPageControllerBase with Store {
  IUserRepository _userRepository = Modular.get();
  UserModel currentUser = UserModel();

  IStudentRepository _iStudentRepository = Modular.get();
  StudentModel currentStudent = StudentModel();

  getUserStudent(bool isUser) {
    if (isUser) {
      currentUser = _userRepository.fetchUser();
    } else {
      currentStudent = _iStudentRepository.fetchStudent();
    }
  }
}
