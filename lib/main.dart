import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:responsive/responsive_row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              /// Background Color
              ///
              ///
              Container(
                color: Colors.black,
              ),

              /// profile photo
              ///
              ///
              Align(
                  alignment: Alignment.centerRight,
                  child: Opacity(
                    opacity: .80,
                    child: Image.asset(
                      'assets/profile.png',
                      alignment: Alignment.centerRight,
                      height: 600,
                      width: 600,
                    ),
                  )),

              /// Text RISHABH
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 170, left: 120),
                    child: Text(
                      'Hello, I am',
                      style: TextStyle(
                        fontFamily: 'RedRose',
                        color: Colors.blue[200],
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10, left: 120),
                    child: Text(
                      '</RISHABH>',
                      style: TextStyle(
                        letterSpacing: 20.0,
                        fontFamily: 'RedRose',
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),

                  ///// Developer qualification ///////
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 120),
                        child: Text(
                          '/Flutter/',
                          style: TextStyle(
                            fontFamily: 'RedRose',
                            color: Colors.blue[300],
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          '/python/',
                          style: TextStyle(
                            fontFamily: 'RedRose',
                            color: Colors.blue[300],
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          '/WebD/',
                          style: TextStyle(
                            fontFamily: 'RedRose',
                            color: Colors.blue[300],
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 50, left: 120),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '  I am a Full Time App Developer, Focusing on interactive Experience and Apps.\n'
                      '  Are you Looking for projects or Collab ?  \n'
                      '  Feel free to check out my Social accouts.',
                      style: TextStyle(
                        fontFamily: 'RedRose',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 120,
                      top: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: SignInButton(
                            Buttons.GitHub,
                            mini: true,
                            onPressed: () {
                              _launchURL('Github');
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: SignInButton(
                            Buttons.LinkedIn,
                            mini: true,
                            onPressed: () {
                              _launchURL('linkedin');
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: SignInButton(
                            Buttons.Twitter,
                            mini: true,
                            onPressed: () {
                              _launchURL('twitter');
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: SignInButton(
                            Buttons.Email,
                            mini: true,
                            onPressed: () {
                              _launchURL('email');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 30),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Copyright © 2020 Rishabh. All Rights Reserved',
                          style: TextStyle(
                            fontFamily: 'RedRose',
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 950),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Built by: Rishabh sharma',
                          style: TextStyle(
                            fontFamily: 'RedRose',
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
      // BACKGROUND IMAGE
      // Image.asset(name),
      // Coulmns
    );
  }

  _launchURL(String value) async {
    const url = 'https://github.com/atrishabhsharma';
    const url2 = 'https://www.linkedin.com/in/rishabh-sharma-1a1184160/';
    const url3 = 'https://twitter.com/voyager_sage/';
    const url4 = 'https://www.atrishabh1999@gmail.com';
    if (value == 'Github') {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } else if (value == 'linkedin') {
      if (await canLaunch(url2)) {
        await launch(url2);
      } else {
        throw 'Could not launch $url2';
      }
    } else if (value == 'twitter') {
      if (await canLaunch(url3)) {
        await launch(url3);
      } else {
        throw 'Could not launch $url3';
      }
    } else if (value == 'email') {
      if (await canLaunch(url4)) {
        await launch(url4);
      } else {
        throw 'Could not launch $url4';
      }
    }
  }
}
