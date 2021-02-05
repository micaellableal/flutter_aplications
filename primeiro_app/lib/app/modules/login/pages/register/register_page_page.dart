import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_page_controller.dart';

class RegisterPagePage extends StatefulWidget {
  final String title;
  final bool isUser;

  const RegisterPagePage({Key key, this.title = "RegisterPage",this.isUser = true})
      : super(key: key);

  @override
  _RegisterPagePageState createState() => _RegisterPagePageState();
}

class _RegisterPagePageState
    extends ModularState<RegisterPagePage, RegisterPageController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.getUserStudent(widget.isUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.isUser ? "Seu nome e: ${controller.currentUser.nome}" : "Seu telefone e: ${controller.currentStudent.telefone}"),
              SizedBox(height: 30.0),
              Text(widget.isUser ? "Seu apelido e: ${controller.currentUser.apelido}" : "Sua senha e: ${controller.currentStudent.senha}"),
              SizedBox(height: 30.0),
              Text(widget.isUser ? "Seu email e: ${controller.currentUser.email}" : "Sua observacao e: ${controller.currentStudent.observacao}"),
            ],
          ),
        ),
      ),
    );
  }
}
