import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("custom form"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset("resource/2.jpg"),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Emeow",
                    hintText: "Input your meow",
                    icon: Icon(Icons.donut_small),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) => print(value),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Me-ow?";
                    }
                  }),
              TextFormField(

                  decoration: InputDecoration(
                    labelText: "Passmeow",
                    hintText: "Input your meeeoaw",
                    icon: Icon(Icons.lock),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  onSaved: (value) => print(value),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Me-ow?";
                    }
                  }),
              RaisedButton(
                  child: Text("Meooooooow"),
                  onPressed: () {
                    _formKey.currentState.validate();
                  })
            ],
          ),
        ));
  }
}
