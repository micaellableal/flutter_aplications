import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/constants/strings.dart' as Strings;
import 'package:primeiro_app/app/shared/constants/routes.dart' as Routes;
import 'package:primeiro_app/app/shared/widgets/main_button.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final double altura;

  const HomePage({Key key, this.title = "Home", this.altura = 200.0})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: MainButton(
              title: Strings.LOGIN,
              acao: () {
                Modular.to
                    .pushNamed(Routes.LOGIN.getRoute(),arguments: true);
              },
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: MainButton(
              title: "vamos de teste",
              acao: (){
                Modular.to.pushNamed(Routes.LOGIN.getRoute(),arguments: false);
              },
            ),
          ),
          Container(
            width: 100.0,
            height: widget.altura,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
