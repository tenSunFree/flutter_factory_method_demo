import 'package:flutter_factory_method_demo/home/view/dialog/base_dialog.dart';
import 'package:flutter_factory_method_demo/home/view/dialog/base_dialog_factory.dart';

class HomePresenter {
  BaseDialog getYahooAlertDialog() =>
      BaseDialogFactory().getDialog(BaseDialogFactory.YAHOO);

  BaseDialog getMomoAlertDialog() =>
      BaseDialogFactory().getDialog(BaseDialogFactory.MOMO);

  BaseDialog getFridayAlertDialog() =>
      BaseDialogFactory().getDialog(BaseDialogFactory.FRIDAY);
}
