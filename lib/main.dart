import 'package:flutter/material.dart';
import 'package:the_final_toters_api/toters_UI/Screens/Splash_screen/view_splash.dart';

void main() {
  runApp(MaterialApp(home: splash(),
    debugShowCheckedModeBanner: false,
  ));
}
class toters extends StatefulWidget {
  const toters({Key? key}) : super(key: key);

  @override
  State<toters> createState() => _totersState();
}

class _totersState extends State<toters> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

