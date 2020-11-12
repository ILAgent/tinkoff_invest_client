import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item/portfolio_item.dart';

class PortfolioItemsList extends StatelessWidget {
  final PortfolioStore _store;

  PortfolioItemsList(this._store);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PortfolioItem>>(
      stream: _store.states.map((it) => it.items).distinct(listEquals),
      builder: (context, snapshot) {
        return ReorderableListView(
          children: snapshot.data.map((e) => PortfolioItemWidget(e)).toList(),
          padding: EdgeInsets.only(top: 16),
          onReorder: (int oldIndex, int newIndex) {  },
        );
      },
    );
  }
}
