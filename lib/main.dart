import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
          color: Colors.blueAccent[700],
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(150, 50, 150, 50),
                color: Colors.amberAccent[200].withOpacity(.75),
                alignment: Alignment.center,
                width: 900,
                height: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //profile image
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/lol.jpg'),
                            fit: BoxFit.fill,
                          )),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        '</RISHABH>',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                          top: 10, bottom: 250, left: 100, right: 100),
                      child: Text(
                        'this is fun  nbvnbvnvnbvnbvnbvnbcbcnbcnbcvyvvtyvy \n'
                        'j k jhbvjhvjhvjgvjhcgxchvkjbkjvjybiu',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightBlueAccent[700],
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        Container(
                          child: SignInButton(
                            Buttons.LinkedIn,
                            mini: true,
                            onPressed: () {
                              _launchURL('linkedin');
                            },
                          ),
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
                  ],
                ),
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
    const url2 = 'http://linkedin.com/in/rishabh-sharma-1a1184160';
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
