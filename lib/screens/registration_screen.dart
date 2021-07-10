import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonali_app/components/openningContactButtons.dart';
import 'package:sonali_app/components/sonali_button.dart';
import 'package:sonali_app/screens/login_screen.dart';
import 'package:sonali_app/screens/user_personal_screen.dart';
import 'package:sonali_app/utilities/styleConstants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  // String documentId = '';
  // String policyId = '';
  String username = '';
  String password = '';
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
            // TextField(
            //   autocorrect: false,
            //   textCapitalization: TextCapitalization.none,
            //   style: TextStyle(
            //     color: Colors.black87,
            //   ),
            //   onChanged: (value) {
            //     documentId = value;
            //   },
            //   decoration: kTextFieldDecoration.copyWith(
            //     labelText: 'Document ID',
            //     hintText: 'Document ID',
            //   ),
            // ), // DOCUMENT ID - TF
            // SizedBox(height: 10.0,),
            // TextField(
            //   autocorrect: false,
            //   textCapitalization: TextCapitalization.none,
            //   style: TextStyle(
            //     color: Colors.black87,
            //   ),
            //   onChanged: (value) {
            //     policyId = value;
            //   },
            //   decoration: kTextFieldDecoration.copyWith(
            //     labelText: 'Policy ID',
            //     hintText: 'Policy ID',
            //   ),
            // ), // POLICY ID - TF
            // SizedBox(height: 10.0,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              style: TextStyle(
                color: Colors.black87,
              ),
              onChanged: (value) {
                username = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'E-mail Address',
                hintText: 'E-mail Address',
              ),
            ), // USERNAME - TF
            SizedBox(height: 10.0,), // REGULAR SPACE
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
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Password',
                hintText: 'Password',
              ),
            ), // PASSWORD - TF
            SizedBox(height: 10.0,), // REGULAR SPACE
            SonaliButton(
              title: 'Register',
              onPressed: () async {
                try{
                  final newUser = await _auth.createUserWithEmailAndPassword(email: username, password: password);
                  if(newUser!=null){
                    Navigator.pushNamed(context, UserPersonalScreen.id);
                  }
                }
                catch(e) {
                  print(e);
                }
              },
              txtColor: Colors.white,
              colour: kFlatGreen,
            ), // REGISTER BUTTON
            SonaliButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              txtColor: Colors.white,
              colour: kFlatGold,
            ), // LOGIN BUTTON


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
