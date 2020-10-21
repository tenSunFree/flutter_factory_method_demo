import 'package:flutter/material.dart';
import 'package:flutter_factory_method_demo/home/view/dialog/dialog.dart';

class MomoAlertDialog extends BaseDialog {
  @override
  bool barrierDismissible() => true;

  @override
  String getTitle() => 'MOMO購物網';

  @override
  String getContent() => 'MOMO購物網提供美容保養、流行服飾、時尚精品、3C、數位家電、生活用品、美食旅遊票券…等數十萬件商品。';

  @override
  List<Widget> getActions(BuildContext context) => <Widget>[
        FlatButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            })
      ];

  @override
  Widget getWidget(BuildContext context) {
    return AlertDialog(
        title: Text(getTitle()),
        content: Text(getContent()),
        actions: getActions(context));
  }
}
