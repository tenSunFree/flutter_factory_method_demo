import 'package:flutter/material.dart';

abstract class BaseDialog {
  bool barrierDismissible();

  String getTitle();

  String getContent();

  List<Widget> getActions(BuildContext context);

  Widget getWidget(BuildContext context);

  Future<void> show(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: barrierDismissible(),
        builder: (BuildContext _) => getWidget(context));
  }
}
