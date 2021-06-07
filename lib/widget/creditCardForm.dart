import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditCardForm extends StatefulWidget {
  const CreditCardForm({Key? key}) : super(key: key);

  @override
  _CreditCardFormState createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Form(
          key: _globalKey,
          child: Column(
            children: <Widget>[
              Container(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Credit Card Number",
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 180,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Expiary Date",
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "CVV Number",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Account Holder",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: MaterialButton(
                  child: Text(
                    "Validate Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
