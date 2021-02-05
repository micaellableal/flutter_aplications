library routes;

import 'package:flutter_modular/flutter_modular.dart';
import 'package:primeiro_app/app/shared/models/route.dart';

const AppRoute LOGIN=AppRoute(host:"login",endpoint: Modular.initialRoute);
const AppRoute REGISTER=AppRoute(host:"login",endpoint:"register");

