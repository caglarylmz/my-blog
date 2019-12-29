import 'package:flutter/material.dart';
import 'package:my_portfolio/config/assets.dart';

class LoginRegisterWidget extends StatefulWidget {
  @override
  _LoginRegisterWidgetState createState() => _LoginRegisterWidgetState();
}

class _LoginRegisterWidgetState extends State<LoginRegisterWidget> {

  void _validateAndSave(){

  }

  void _moveToRegister(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Form(
        child: Column(
          children: createInputs(),
        ),
      ),
    );
  }

  List<Widget> createInputs() => [
        SizedBox(
          height: 10,
        ),
        Hero(
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 100,
            child: Image.asset(Assets.avatar),
          ), tag: "hero",
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "Email"),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "Password"),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.redAccent,
          onPressed: ()=>_validateAndSave,
        ),
           FlatButton(
          child: Text(
            "Not have an Account? Create Account?",
            style: TextStyle(fontSize: 11),
          ),
          onPressed: ()=>_moveToRegister,
        ),
      ];
}
