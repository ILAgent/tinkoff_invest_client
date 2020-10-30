import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tinkoff_invest/redux/portfolio_state.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_amount.dart';
import 'package:tinkoff_invest/view/portfolio/children/tinkoff_account_title.dart';

class PortfolioWidget extends StatelessWidget {
  final Store<PortfolioState> _store;

  PortfolioWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PortfolioState>(
        stream: _store.onChange.startWith(_store.state),
        builder: (context, snapshot) {
          return Container(
            padding: EdgeInsets.only(top: 50, left: 40, right: 40),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TinkoffAccountTileWidget(snapshot.data),
                TinkoffAccountAmountWidget(snapshot.data),
              ],
            ),
          );
        });
  }
}
