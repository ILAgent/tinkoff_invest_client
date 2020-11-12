import "package:collection/collection.dart";
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/state/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio_state.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_group/protfolio_group.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item/portfolio_item.dart';

class PortfolioItemsList extends StatelessWidget {
  final PortfolioStore _store;

  PortfolioItemsList(this._store);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<dynamic>>(
      stream: _store.states.map(_stateToList).distinct(listEquals),
      builder: (context, snapshot) {
        return ReorderableListView(
          children: snapshot.data.map((e) {
            if (e is PortfolioItem) return PortfolioItemWidget(e);
            if (e is ItemsGroup) return PortfolioGroupWidget(e);
            throw ArgumentError(e);
          }).toList(),
          padding: EdgeInsets.only(top: 16),
          onReorder: (int oldIndex, int newIndex) {},
        );
      },
    );
  }
}

List<dynamic> _stateToList(PortfolioState state) {
  return groupBy(state.items, (PortfolioItem item) => item.group)
      .entries
      .expand((e) => [
            if (e.key != null) e.key,
            ...e.value,
          ])
      .toList();
}
