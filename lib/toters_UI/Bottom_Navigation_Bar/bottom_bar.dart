import 'package:flutter/material.dart';
import '../Screens/Butler_page/view_butler.dart';
import '../Screens/Home_page/view_home.dart';
import '../Screens/Orders_page/view_orders.dart';
import '../Screens/Profile_page/view_profile.dart';
import '../Screens/Search_page/view_search.dart';

 class BasicBottomNavigation extends StatefulWidget {
   const BasicBottomNavigation({Key? key}) : super(key: key);

   @override
   State<BasicBottomNavigation> createState() => _BasicBottomNavigationState();
 }

 class _BasicBottomNavigationState extends State<BasicBottomNavigation> {
   int currentIndex = 0;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: [         /// List of tab page widgets
        page1(),
         search(),
         butlerPage(),
         orderPage(),
         searcher(),
       ][currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         selectedItemColor: Color(0xFF1fad90),
         unselectedItemColor: Colors.grey,
         type: BottomNavigationBarType.fixed,

         onTap: (index) {
           setState(() {
             currentIndex = index;     /// Switching tabs
           });
         },
         items:[
           BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
           BottomNavigationBarItem(icon: Icon(Icons.room_service), label: "butler"),
           BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: "Order"),
           BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
         ],
       ),
     );
   }
 }
