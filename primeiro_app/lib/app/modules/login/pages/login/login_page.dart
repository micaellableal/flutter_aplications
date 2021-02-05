import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/modules/login/pages/login/login_controller.dart';
import 'package:primeiro_app/app/shared/widgets/main_button.dart';
import 'package:primeiro_app/app/shared/constants/strings.dart' as Strings;
import 'package:primeiro_app/app/shared/constants/routes.dart' as Routes;


class LoginPage extends StatefulWidget {
  final String title;
  final bool verificacao;

  const LoginPage({Key key, this.title = "Login", this.verificacao})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.setData();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: widget.verificacao ? Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: controller.nomeController,
                decoration: (InputDecoration(
                  labelText: Strings.NOME,
                )),
              ),
              TextField(
                controller: controller.emailController,
                decoration: (InputDecoration(
                  labelText: Strings.EMAIL,
                )),
              ),
              TextField(
                controller: controller.apelidoController,
                decoration: (InputDecoration(
                  labelText: Strings.APELIDO,
                )),
              ),
              TextField(
                controller: controller.ageController,
                decoration: (InputDecoration(
                  labelText: Strings.IDADE,
                )),
              ),
              TextField(
                controller: controller.heigthController,
                decoration: (InputDecoration(
                  labelText: Strings.ALTURA,
                )),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: MainButton(
                  title: Strings.CADASTRO,
                  acao: () {
                    controller.setUser();
                    Modular.to.pushNamed(
                        Routes.REGISTER.getRoute(), arguments: true);
                  },
                ),
              )
            ],
          ),
        ) : Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: controller.telefoneController,
                decoration: (InputDecoration(
                  labelText: Strings.TELEFONE,
                )),
              ),
              TextField(
                controller: controller.observacaoController,
                decoration: (InputDecoration(
                  labelText: Strings.OBSERVACAO,
                )),
              ),
              TextField(
                controller: controller.senhaController,
                decoration: (InputDecoration(
                  labelText: Strings.SENHA,
                )),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: MainButton(
                  title: Strings.CADASTRO,
                  acao: () {
                    controller.setStudent();
                    Modular.to.pushNamed(
                        Routes.REGISTER.getRoute(), arguments: false);
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
