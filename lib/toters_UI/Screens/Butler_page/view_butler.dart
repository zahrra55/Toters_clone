import 'package:flutter/material.dart';

class butlerPage extends StatefulWidget {
  const butlerPage({Key? key}) : super(key: key);

  @override
  State<butlerPage> createState() => _butlerPageState();
}

class _butlerPageState extends State<butlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Color(0xFF1fad90),
              padding: EdgeInsets.only(top: 70, left: 30),
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We deliver anything that fits on a\nmotobike!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  'Request a butler to:',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFf6f6f8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.1,
                      blurRadius: 6,
                    )
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver your stuff',
                        style: TextStyle(
                            color: Color(0xFF1fad90),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'we can reach you any where',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'you can always trust us!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/motobike.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF1fad90),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFf6f6f8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.1,
                      blurRadius: 6,
                    )
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buy something',
                        style: TextStyle(
                            color: Color(0xFF1fad90),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'we can reach you any where',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'you can always trust us!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/bags.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xFF1fad90),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
