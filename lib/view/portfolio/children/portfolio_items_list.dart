import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_api/model/portfolio_position.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';
import 'package:tinkoff_invest/redux/store_extension.dart';
import 'package:tinkoff_invest/view/portfolio/children/portfolio_item.dart';

class PortfolioItemsList extends StatelessWidget {
  final PortfolioStore _store;

  PortfolioItemsList(this._store);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<PortfolioPosition>>(
      stream: _store.states.map((it) => it.positions).distinct(),
      builder: (context, snapshot) {
        return ListView.separated(
          padding: EdgeInsets.only(top: 16),
          itemBuilder: (context, index) {
            return PortfolioItemWidget(snapshot.data[index]);
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
            );
          },
          itemCount: snapshot.data.length,
        );
      },
    );
  }
}
