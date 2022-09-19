import 'package:flutter/material.dart';

import '../../Bottom_Navigation_Bar/bottom_bar.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) => BasicBottomNavigation()));
  }

  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Image.asset('images/splash_image.jpg'),
        ));
  }
}
