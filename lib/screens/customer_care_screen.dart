import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonali_app/screens/login_screen.dart';
import 'package:sonali_app/screens/registration_screen.dart';
import 'package:sonali_app/utilities/styleConstants.dart';

class CustomerCareScreen extends StatefulWidget {
  static String id = 'customer_care_screen';

  @override
  _CustomerCareScreenState createState() => _CustomerCareScreenState();
}

class _CustomerCareScreenState extends State<CustomerCareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFlatGrey,
      appBar: AppBar(
        title: Text(
          'Customer Care',
          style: kAppBarTitlte,
        ),
        backgroundColor: kFlatGreen,
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kFlatGreen,
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 40.0,
                  ),
                ),
              ),

            ),
            ListTile(
              leading: Icon(
                Icons.lock_open,
                color: kFlatGold,
                size: 28.0,
              ),
              title: Text(
                'Login',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              subtitle: Text(
                'Click to login',
                style: TextStyle(
                    color: kFlatGold
                ),
              ),
              onTap:  () {
                Navigator.popAndPushNamed(context, LoginScreen.id);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_add,
                color: kFlatGold,
                size: 28.0,
              ),
              title: Text(
                'Register',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              subtitle: Text(
                'In order to register, you must have at least one policy with Us.',
                style: TextStyle(
                    color: kFlatGold
                ),
              ),
              onTap:  () {
                Navigator.popAndPushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120.0,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kFlatGreen.withOpacity(0.85),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Icon(
                      Icons.room,
                      size: 40.0,
                    ),
                  ),

                  Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Head Office',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Text(
                          '7 Rajuk Avenue,',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Motijheel C/A, Dhaka - 1000.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),

                        ),
                      ),
                    ],
                  )
                ],
              ),

            ), // Head Office

            Container(
              height: 120.0,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kFlatGreen.withOpacity(0.85),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Icon(
                      Icons.room,
                      size: 40.0,
                    ),
                  ),

                  Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Head Office (Ext)',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Text(
                          '68/B D.I.T. Road,',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Malibagh, Dhaka - 1219.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

            ), // Head Office Ext

            Container(
              height: 120.0,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kFlatGreen.withOpacity(0.85),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Icon(
                      Icons.headset_mic,
                      size: 40.0,
                    ),
                  ),

                  Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Customer Care',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),

                      Container(
                        child: Text(
                          '+8809678200006',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          softWrap: true,
                        ),
                      ),

                      Container(
                        child: Text(
                          '+8801976625488',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          softWrap: true,
                        ),
                      ),
                      Container(
                        child: Text(
                          '+8801976625499',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),

            ), // Customer Care

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ // Email
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kFlatGreen,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        children: [
                          Icon(
                            Icons.email,
                            size: 35.0,
                          ),
                          Text(
                            'info@sonalilife.com',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    )
                ), // Email
                Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: kFlatGreen,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(

                        children: [
                          Icon(
                            Icons.public,
                            size: 35.0,
                          ),
                          Text(
                            'www.sonlilife.com',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    )
                ), // Email
              ],
            )
          ],
        ),
      ),
    );
  }
}
