import 'package:flutter/material.dart';
import 'package:sonali_app/utilities/styleConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserPersonalScreen extends StatefulWidget {
  static String id = 'personal_user_screen';
  const UserPersonalScreen({Key? key}) : super(key: key);

  @override
  _UserPersonalScreenState createState() => _UserPersonalScreenState();
}

class _UserPersonalScreenState extends State<UserPersonalScreen> {
  final _auth = FirebaseAuth.instance;

  late final User loggedInUser;
  String username = '';



  void getCurrentUser() async {

    try{
      final user = await _auth.currentUser!;
       if(user != null) {
         loggedInUser = user;
         setState(() {
          username = user.email.toString();
         });
         print(user.email);
       }
    }
    catch(e){
      print(e);
    }
  }


  // String username = 'could not get any data';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    //    getData();
    getCurrentUser();
  }

  // getData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     username = prefs.getString('username') ?? 'No Data';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF13449D),
        leading: null,
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
        ],
        title: Text(
          'Welcome $username',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              child: Text(username,
              style:  TextStyle(
                color: Colors.white
              ),),
            ),
          ],
        ),
        ),
    );
  }
}
