import 'package:flutter/material.dart';
import 'package:flutter_factory_method_demo/home/view/dialog/dialog.dart';

class YahooAlertDialog extends BaseDialog {
  @override
  bool barrierDismissible() => false;

  @override
  String getTitle() => 'Yahoo奇摩超級商城';

  @override
  String getContent() => '超級商城百萬商品，你想要這裡都有！天天都有超值優惠，精打細算趁現在。1點1元超贈點，折抵無上限。';

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
