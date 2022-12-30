import 'package:flutter/material.dart';
import '../font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 69),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 37),
                  padding: EdgeInsets.only(bottom: 30, right:120),
                  child: Text(
                    'Welcome To Smart Clock',
                    style: splashTitle,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage(
                      'assets/images/8401.jpg'
                    ),
                    height: 230,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Simple And Fast \nClock App',
                    style: splashTitleSub,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100, right: 300),
                  child: TextButton(
                    onPressed: () {  },
                    child: Text('Skip intro'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 104, 105, 105)),
                    ),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}