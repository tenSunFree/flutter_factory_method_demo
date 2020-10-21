import 'package:flutter/material.dart';
import 'package:flutter_factory_method_demo/home/presenter/home_presenter.dart';

class HomeScreen extends StatelessWidget {
  final HomePresenter _presenter = HomePresenter();

  @override
  Widget build(BuildContext context) => Stack(children: <Widget>[
        Image.asset('assets/icon_home.png'),
        Column(children: <Widget>[
          Expanded(child: SizedBox(), flex: 50),
          Expanded(
              child: GestureDetector(
                  onTap: () => _presenter.getYahooAlertDialog().show(context)),
              flex: 22),
          Expanded(
              child: GestureDetector(
                  onTap: () => _presenter.getMomoAlertDialog().show(context)),
              flex: 20),
          Expanded(
              child: GestureDetector(
                  onTap: () => _presenter.getFridayAlertDialog().show(context)),
              flex: 22),
          Expanded(child: SizedBox(), flex: 6)
        ])
      ]);
}
