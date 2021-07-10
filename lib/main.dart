import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sonali_app/screens/customer_care_screen.dart';
import 'package:sonali_app/screens/login_screen.dart';
import 'package:sonali_app/screens/registration_screen.dart';
import 'package:sonali_app/screens/user_personal_screen.dart';
import 'package:sonali_app/screens/welcome_screen.dart';
import 'package:sonali_app/utilities/styleConstants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SonaliApp());
}

class User with ChangeNotifier{
  String data = 'Some data!';

  String getData() {
    return data;
  }
}

class SonaliApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        canvasColor: kFlatGrey,
        textTheme: TextTheme(
          bodyText1: TextStyle(color:Colors.black54),

        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        CustomerCareScreen.id: (context) => CustomerCareScreen(),
        UserPersonalScreen.id: (context) => UserPersonalScreen(),
      },
    );
  }
}




