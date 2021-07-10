import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sonali_app/components/openningContactButtons.dart';
import 'package:sonali_app/components/sonali_button.dart';
import 'package:sonali_app/screens/registration_screen.dart';
import 'package:sonali_app/screens/user_personal_screen.dart';
import 'package:sonali_app/utilities/showError.dart';
import '../utilities/styleConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  String username = '';
  String password = '';
  String errorMessage = '';

  void getCurrentUser() async {

    try{
      final user = await _auth.currentUser;
      if(user != null) {
        Navigator.popAndPushNamed(context, UserPersonalScreen.id);
      }
    }
    catch(e){
      print(e);
    }
  }

  Future<void> SetUserData () async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('username', username);
  }

  getErrorMessage() async {
    if (username == '' && password == '') showError(context, 'Username and passwords are required!');
    else if(username == '') showError(context, 'Username is required');
    else if(password == '') showError(context, 'Password is required');

    else
    {
      if(errorMessage != '') showError(context, errorMessage);
      else {
        try{
          final user = await _auth.signInWithEmailAndPassword(email: username, password: password);
          Navigator.popAndPushNamed(context, UserPersonalScreen.id);
        }
        catch(e){
          print(e);
        }

        // setState(() {
        //   SetUserData();
        //   print(username);
        //   Navigator.pushNamed(context, UserPersonalScreen.id);
        // });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlatGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/sonaliLogo.png'),
              ),
            ), // LOGO
            Container(
              child: Center(
                child: Text(
                  'SONALI LIFE',
                  style: TextStyle(
                    color: Color(0xFFD0A93F),
                    fontSize: 36.0,
                  ),
                ),
              ),
            ), // SONALI LIFE TEXT
            Container(
              child: Center(
                child: Text(
                  'Insurance Company Limited',
                  style: TextStyle(
                    color: Color(0xFFD0A93F),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ), // Insurance Company Limited
            SizedBox(
              height: 10.0,
            ), // BLANK SPACE
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              style: TextStyle(
                color: Colors.black87,
              ),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Username',
                hintText: 'Username',
              ),
            ), // USERNAME TEXTFIELD
            // Container(
            //   child: Text(username, style: TextStyle(fontSize: 50.0, color: Colors.blueAccent),),
            // ),
            SizedBox(
              height: 10.0,
            ), // REGULAR SPACE
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              obscureText: true,
              obscuringCharacter: '•',
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              style: TextStyle(
                color: Colors.black87,
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Password',
                hintText: 'Password',
              ),
            ), // PASSWORD TEXTFIELD
            SizedBox(
              height: 10.0,
            ), // REGULAR SPACE
            SonaliButton(
              title: 'Login',
              colour: kFlatGold,
              txtColor: Colors.white,
              onPressed: () {
                getErrorMessage();
              },
            ), // LOGIN BUTTON
            SonaliButton(
              title: 'Register',
              onPressed: ()  {
                  Navigator.pushNamed(context, RegistrationScreen.id);
              },
              txtColor: Colors.white,
              colour: kFlatGreen,
            ), // REGISTER BUTTON

            SizedBox(
              height: 10.0,
            ), // REGULAR SPACE
            OpenningContactButtons(context),

          ],
        ),
      ),
    );
  }
}




