import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'first_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 150.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return FirstScreen();
          }));
        });
      },
      splashColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      highlightElevation: 0.0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/google_logo.png'),
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Sign in with Google',
                style: TextStyle(fontSize: 20.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
