import 'package:flutter_factory_method_demo/home/view/dialog/dialog.dart';

class BaseDialogFactory {
  static const int YAHOO = 0;
  static const int MOMO = 1;
  static const int FRIDAY = 2;

  BaseDialog getDialog(int type) {
    switch (type) {
      case YAHOO:
        return YahooAlertDialog();
      case MOMO:
        return MomoAlertDialog();
      case FRIDAY:
        return FridayAlertDialog();
      default:
        return YahooAlertDialog();
    }
  }
}
