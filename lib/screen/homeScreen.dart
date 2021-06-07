import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/widget/creditCardForm.dart';
import 'package:flutter_credit_card_ui/widget/creditCardUI.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Credit Card"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              CreditCardUI(),
              SizedBox(
                height: 100,
              ),
              CreditCardForm(),
            ],
          ),
        ),
      ),
    );
  }
}
