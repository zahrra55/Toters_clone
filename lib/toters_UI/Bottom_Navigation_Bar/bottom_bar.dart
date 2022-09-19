import 'package:flutter/material.dart';
import '../Screens/Butler_page/view_butler.dart';
import '../Screens/Home_page/view_home.dart';
import '../Screens/Orders_page/view_orders.dart';
import '../Screens/Profile_page/view_profile.dart';
import '../Screens/Search_page/view_search.dart';
import '../Screens/Splash_screen/view_splash.dart';

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

// class bottomBar extends StatefulWidget {
//   const bottomBar({Key? key}) : super(key: key);
//
//   @override
//   State<bottomBar> createState() => _bottomBarState();
// }
//
// class _bottomBarState extends State<bottomBar> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       // bottomNavigationBar: BottomNavigationBar(
//       //     type: BottomNavigationBarType.fixed,
//       //     selectedItemColor: Color(0xFF1fad90),
//       //     items: [
//       //       BottomNavigationBarItem(
//       //         icon: GestureDetector(
//       //             onTap: () {
//       //               Navigator.of(context)
//       //                   .push(MaterialPageRoute(builder: (context) => page1()));
//       //              },
//       //             child: Icon(Icons.home_filled)),
//       //         label: 'Home',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: GestureDetector(
//       //             onTap: () {
//       //               // Navigator.of(context).push(
//       //               //     MaterialPageRoute(builder: (context) => search()));
//       //             },
//       //             child: Icon(Icons.search_rounded)),
//       //         label: 'Search',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: GestureDetector(
//       //           onTap: () {
//       //             // Navigator.of(context).push(
//       //             //     MaterialPageRoute(builder: (context) => butlerPage()));
//       //           },
//       //           child: Image.asset(
//       //             'images/bulter icon.jpg',
//       //             width: 27,
//       //             height: 27,
//       //           ),
//       //         ),
//       //         label: 'butler',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: GestureDetector(
//       //           onTap: () {
//       //             // Navigator.of(context).push(
//       //             //     MaterialPageRoute(builder: (context) => orderPage()));
//       //           },
//       //           child: Icon(Icons.list_alt_rounded),
//       //         ),
//       //         label: 'Order',
//       //       ),
//       //       BottomNavigationBarItem(
//       //         label: 'Account',
//       //         icon: GestureDetector(
//       //           onTap: () {
//       //             // Navigator.of(context).push(
//       //             //     MaterialPageRoute(builder: (context) => searcher()));
//       //           },
//       //           child: Icon(Icons.person_outline),
//       //         ),
//       //       ),
//       //     ]),
//     );
//   }
// }
