import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter/material.dart';

import './home.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            // PlatformTextField(), 
            Text('hi mom '), 
            PlatformButton(child: PlatformText('Login'), onPressed: () => processLogin(context),)
          ],
        ),
      ),
    );
    
  }


  void  processLogin(BuildContext context) {
    print('hi mom we are logging in  ');
    Navigator.pushReplacement(context, platformPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
