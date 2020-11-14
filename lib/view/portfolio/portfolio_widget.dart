import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_items_list.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_amount.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_title.dart';

class PortfolioWidget extends StatelessWidget {
  final PortfolioStore _store;

  PortfolioWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 50, left: 40, right: 40),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TinkoffAccountTileWidget(_store),
                    TinkoffAccountAmountWidget(_store),
                  ],
                ),
              ),
              Material(
                child: InkWell(
                  customBorder: CircleBorder(),
                  splashColor: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.settings),
                  ),
                  onTap: () {},
                ),
              )
            ],
          ),
          Expanded(
            child: PortfolioItemsList(_store),
          )
        ],
      ),
    );
  }
}
