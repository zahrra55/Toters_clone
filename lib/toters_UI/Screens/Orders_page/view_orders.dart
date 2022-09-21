import 'package:flutter/material.dart';

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Past Orders'),
    Tab(text: 'Upcoming'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: myTabs.length,
        child: Scaffold(
          backgroundColor: Color(0xFFf6f6f8),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white30,
            centerTitle: true,
            title: TabBar(
              labelColor: Color(0xFF1fad90),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF1fad90),
              tabs: myTabs,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'You do not have any past orders!',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
                Image(image: NetworkImage('https://e.top4top.io/p_2455rl89f3.jpg')),
            ],
          ),
        ));
  }
}