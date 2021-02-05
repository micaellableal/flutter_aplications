import 'package:primeiro_app/app/modules/login/pages/register/register_page_page.dart';

import 'pages/register/register_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/modules/login/pages/login/login_controller.dart';
import 'pages/login/login_page.dart';
import 'package:primeiro_app/app/shared/constants/routes.dart' as Routes;

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterPageController,
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => LoginPage(
                  verificacao: args.data,
                )),
        ModularRouter(Routes.REGISTER.getEndpoint(),
            child: (_, args) => RegisterPagePage(
                  isUser: args.data,
                )),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
