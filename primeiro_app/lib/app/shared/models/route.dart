import 'package:flutter_modular/flutter_modular.dart';

class AppRoute {
  final String host;
  final String endpoint;
  const AppRoute({this.host, this.endpoint});
  String getRoute() =>
      endpoint == Modular.initialRoute
          ? getHost()
          : getHost() + getEndpoint();
  String getEndpoint() => "/$endpoint";
  String getHost() => "/$host";
}