import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item.dart';
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
          TinkoffAccountTileWidget(_store),
          TinkoffAccountAmountWidget(_store),
          StreamBuilder<PortfolioState>(
            stream: _store.states,
            builder: (context, snapshot) {
              return Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 16),
                  itemBuilder: (context, index) {
                    return PortfolioItemWidget(snapshot.data.positions[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 10,
                    );
                  },
                  itemCount: snapshot.data.positions.length,
                ),
              );
            }
          )
        ],
      ),
    );
  }
}
