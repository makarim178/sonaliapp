

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonali_app/components/openningContactButtons.dart';
import 'package:sonali_app/screens/login_screen.dart';
import 'package:sonali_app/screens/registration_screen.dart';
import '../utilities/styleConstants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../components/sonali_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      upperBound: 1.0,
    );
    
    animation = ColorTween(begin: kFlatGold, end: kFlatGrey).animate(controller);

    controller.forward();
    // animation.addStatusListener((status) {
    //   if(status == AnimationStatus.completed) controller.reverse(from: 1.0);
    //   else if(status == AnimationStatus.dismissed) controller.forward();
    // });
    controller.addListener(() {
      setState(() {
      });
      //print(animation.value);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlatGrey, //animation.value
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                constraints: BoxConstraints(
                  minHeight:200 ,
                  maxHeight: 600 ,
                ),
                child: Image.asset('images/sonaliLogo.png'),
              ),
            ), // LOGO
            Container(
              child: Center(
                child: TextLiquidFill(
                  text: 'SONALI LIFE',
                  waveColor: kFlatGold,
                  boxBackgroundColor: kFlatGrey,
                  boxHeight: 60.0,
                  textStyle: TextStyle(
                    color: Color(0xFFD0A93F),
                    fontSize: 36.0,
                  ),
                ),
              ),
            ), // SONALI LIFE TEXT
            Container(
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: Color(0xFFD0A93F),
                    fontSize: 16.0,
                  ),
                  child: Text('Insurance Company Limited',),
                ),
              ),
            ), // Insurance Company Limited
            SizedBox(
              height: 10.0,
            ), // BLANK SPACE
            SonaliButton(
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              txtColor: Colors.white,
              colour: kFlatGold,
            ),
            SonaliButton(
              title: 'Register',
              colour: kFlatGreen,
              txtColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
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






