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
          child: Image.network('https://th.bing.com/th/id/R.b0fc49c5dd848a5f3f5399b9de9ef943?rik=AQ1CNoMl3EsiBg&riu=http%3a%2f%2fbeirutdigitaldistrict.s3.amazonaws.com%2fblog%2f5848_1555505316_8164_1554129405_toters-logo.png&ehk=jrp81wgfQlKHDE2ROxSIX4HoZd%2bIE4l7uv%2fcaGvYBAg%3d&risl=&pid=ImgRaw&r=0',
          width:  MediaQuery.of(context).size.width-60,
          ),
        ));
  }
}
