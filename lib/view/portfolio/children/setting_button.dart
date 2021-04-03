import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/portfolio_store.dart';

class SettingsButtonWidget extends StatelessWidget {
  final PortfolioStore _store;

  SettingsButtonWidget(this._store);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.only(bottom: 96),
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.add),
                          title: Text('Добавить группу'),
                          onTap: () {
                            _store.dispatch(AddGroup());
                            Navigator.of(context).pop();
                          }),
                    ],
                  ),
                );
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.settings),
        ),
      ),
    );
  }
}
