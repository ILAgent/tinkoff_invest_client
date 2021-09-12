import 'package:flutter/material.dart';
import 'package:tinkoff_invest/redux/actions.dart';
import 'package:tinkoff_invest/redux/dispatcher.dart';

class LoginPage extends StatelessWidget {
  final Dispatcher _dispatcher;

  const LoginPage(this._dispatcher, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Введите token',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              controller: controller,
              autofocus: true,
              style: TextStyle(fontSize: 24),
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  _dispatcher.dispatch(OpenPortfolio());
                  _dispatcher.dispatch(RegisterToken(controller.text));
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Продолжить",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
