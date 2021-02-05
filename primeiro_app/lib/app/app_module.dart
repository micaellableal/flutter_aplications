import 'package:dio/dio.dart';
import 'package:primeiro_app/app/shared/repositories/student/istudent_repository.dart';
import 'shared/repositories/student/student_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/app/app_widget.dart';
import 'package:primeiro_app/app/modules/home/home_module.dart';
import 'package:primeiro_app/app/modules/login/login_module.dart';
import 'package:primeiro_app/app/shared/constants/routes.dart' as Routes;
import 'package:primeiro_app/app/shared/repositories/user/iuser_repository.dart';
import 'package:primeiro_app/app/shared/repositories/user/user_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<IUserRepository>((i) => UserRepository()),
        Bind<IStudentRepository>((i) => StudentRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter(Routes.LOGIN.getRoute(), module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
