import 'package:flutter/material.dart';
import 'package:primeiro_app/app/shared/constants/colors.dart' as AppColors;

class MainButton extends StatelessWidget {
  final String title;
  final GestureTapCallback acao;

  MainButton({@required this.title, this.acao}) : assert(title != null, """
          Widget => MainButton
          Error => A non-null String must be provided as Title to MainButton widget.
          """);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: acao,
      child: Container(
        width: 120.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: AppColors.MAIN_BUTTON_COLOR,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.black, width: 2.0),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
