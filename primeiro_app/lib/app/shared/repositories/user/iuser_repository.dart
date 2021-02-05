import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/data/user_model.dart';

abstract class IUserRepository implements Disposable {

  UserModel fetchUser();

  setUser(UserModel usuario);

  double fetchHeigth();
  int fetchAge();

  @override
  setAge(int age);
  setHeigth(double heigth);
}
