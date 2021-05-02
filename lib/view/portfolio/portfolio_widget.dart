import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_items_list.dart';
import 'package:tinkoff_invest/view/portfolio/children/setting_button.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_amount.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_title.dart';

class PortfolioWidget extends StatelessWidget {
  final AppStore _store;

  PortfolioWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SettingsButtonWidget(_store)],
        backgroundColor: Colors.white,
        title: Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 8, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TinkoffAccountTileWidget(_store),
              TinkoffAccountAmountWidget(_store),
            ],
          ),
        ),
      ),
      body: PortfolioItemsList(_store),
    );
  }
}
