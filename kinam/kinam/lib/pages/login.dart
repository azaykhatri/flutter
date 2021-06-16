import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your User Name",
                  labelText: "username",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
          child: ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("hi ajay");
            },
          ),
        ),
      ],
    ));
  }
}
