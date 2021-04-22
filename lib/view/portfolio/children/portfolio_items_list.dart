import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/app_store.dart';
import 'package:tinkoff_invest/redux/state/app_state.dart';
import 'package:tinkoff_invest/redux/state/portfolio/items_group.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_item.dart';
import 'package:tinkoff_invest/redux/state/portfolio/portfolio_state.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/view/portfolio/children/group/protfolio_group.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item.dart';

class PortfolioItemsList extends StatelessWidget {
  final AppStore _store;
  final PortfolioState _state;


  PortfolioItemsList(this._store, this._state);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<dynamic>>(
      stream: _store.states.map(_stateToList),
      builder: (context, snapshot) {
        final items = snapshot.data ?? [];
        return ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            _onReorder(oldIndex, newIndex, items);
          },
          children: items.map((e) {
            if (e is PortfolioItem) return PortfolioItemWidget(e);
            if (e is ItemsGroup) return PortfolioGroupWidget(e, _store, _state);
            throw ArgumentError(e);
          }).toList(),
        );
      },
    );
  }

  void _onReorder(int oldIndex, int newIndex, List items) {
    final draggableItem = items[oldIndex];
    if (draggableItem is PortfolioItem) {
      for (var i = newIndex - 1; i >= 0; --i) {
        final item = items[i];
        if (item is ItemsGroup) {
          if (draggableItem.groupId != item.id) {
            _store.dispatch(
              UpdatePortfolioItemGroup(draggableItem.figi(), item.id),
            );
          }
          return;
        }
      }
      _store.dispatch(
        UpdatePortfolioItemGroup(draggableItem.figi(), null),
      );
    }
  }

  List<dynamic> _stateToList(AppState state) {
    final groups = groupBy(state.items, (PortfolioItem item) => item.groupId)
        .entries
        .toList();
    groups.sort(
      (a, b) => a.key == null
          ? -1
          : b.key == null
              ? 1
              : state
                  .groupById(a.key!)
                  .title
                  .compareTo(state.groupById(b.key!).title),
    );
    final items = groups
        .expand((e) => [
              if (e.key != null) state.groupById(e.key!),
              ...e.value,
            ])
        .toList();

    state.groups.forEach((g) {
      if (!items.contains(g)) {
        items.add(g);
      }
    });

    return items;
  }
}
