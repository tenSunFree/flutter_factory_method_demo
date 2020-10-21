import 'package:flutter/material.dart';
import 'package:flutter_factory_method_demo/home/view/dialog/dialog.dart';

class FridayAlertDialog extends BaseDialog {
  @override
  bool barrierDismissible() => false;

  @override
  String getTitle() => 'FriDay購物';

  @override
  String getContent() =>
      'FriDay購物提供遠東百貨、SOGO百貨、愛買量販、品牌outlet及3C、居家、流行等全品類共超過80萬件商品。';

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
