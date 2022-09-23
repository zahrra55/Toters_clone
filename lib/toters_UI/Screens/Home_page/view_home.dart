import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart';
import 'package:the_final_toters_api/toters_UI/Screens/Home_page/view_restrunt.dart';
import '../../../api_connection/api.dart';

class page1 extends StatefulWidget {
  final String photo = 'https://c.top4top.io/p_2455iq9ao1.jpg';
  final String name = 'kima';
  final double rate = 4.2;
  @override
  State<page1> createState() => _page1State();
}

///////////////////////////////////////////////////////////////Getting the data
class _page1State extends State<page1> {
  Future GetData() async {
    var url = Uri.parse('http://localhost:4000/get_home_adds/:id');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      for (int i = 0; i < list2.length; i++) {
        add_img.add(list2[i]['addIMG']);
        add_times.add(list2[i]['TimeAdded']);
        add_tags.add(list2[i]['TAG']);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    GetData();
  }

  Future GetData2() async {
    var url = Uri.parse('http://localhost:4000/get_home_catogories/:id');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      for (int i = 0; i < list2.length; i++) {
        add_img.add(list2[i]['catogoryNAME']);
        add_times.add(list2[i]['catogoryIMG']);
        add_tags.add(list2[i]['timeADDED']);
        add_tags.add(list2[i]['catogoryTAG']);
      }
    });
  }

  @override
  void initState2() {
    super.initState();
    GetData2();
  }

  Future GetData3() async {
    var url = Uri.parse('http://localhost:4000/get_location/:id');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      for (int i = 0; i < list2.length; i++) {
        loc_country.add(list2[i]['country']);
        loc_city.add(list2[i]['city']);
        loc_tag.add(list2[i]['tag']);
      }
    });
  }

  @override
  void initState3() {
    super.initState();
    GetData3();
  }

  Future GetData4() async {
    var url = Uri.parse('http://localhost:4000/get_log_in/:id');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      for (int i = 0; i < list2.length; i++) {
        log_name.add(list2[i]['NAME']);
        log_phone.add(list2[i]['PhonNum']);
        log_code.add(list2[i]['Code']);
        log_loc.add(list2[i]['Location']);
        log_time.add(list2[i]['LogIn_time']);
      }
    });
  }

  @override
  void initState4() {
    super.initState();
    GetData4();
  }

  Future GetData5() async {
    var url = Uri.parse('http://localhost:4000//get_search_adds/:id');
    Map<String, String> headers = {"Content-type": "application/json"};

    Response response = await get(url);

    int statusCode = response.statusCode;

    String body = response.body;
    List<dynamic> list2 = jsonDecode(body);

    print(body);
    setState(() {
      for (int i = 0; i < list2.length; i++) {
        searsh_img.add(list2[i]['imgUrl']);
        searsh_stores.add(list2[i]['no_stores']);
        searsh_title.add(list2[i]['title']);
        searsh_time.add(list2[i]['time_added']);
        searsh_tag.add(list2[i]['RES_TAG']);
      }
    });
  }

  @override
  void initState5() {
    super.initState();
    GetData5();
  }

///////////////////////////////////////////////////////////////Getting the data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivering To',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  'Baghdad,Iraq', //'loc_city[0],loc_country[0]',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.black,
                  size: 27,
                )
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.notifications_outlined,
                color: Colors.grey.withOpacity(0.8),
                size: 26,
              ),
              SizedBox(
                width: 10,
              ),
              Image.network(
                'https://i.top4top.io/p_2455z6r101.png',
                width: 22,
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
        elevation: 0.4,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Green',
                              style: TextStyle(
                                color: Color(0xFF1fad90),
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Color(0xFF1fad90),
                              size: 25,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                        Text(
                          '10 more orders by August 31 to reach the Gold.',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Pts',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                //Icon(Icons.arrow_forward),
                                Image.network(
                                  'https://g.top4top.io/p_2455pzfxz1.png',
                                  width: 19,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(  //->listview.builder( itemcount:add_name.length,scrollDirection: Axis.horizontal,itemBuilder:(context,index)
                                  //in that case we are going tu use add_img[index] instead
                items: [
                      crauselItems(
                          'https://k.top4top.io/p_2455y1c0k4.jpg'), //(add_img[0])
                      crauselItems(
                          'https://j.top4top.io/p_2455r7ln93.jpg'), //(add_img[1])
                      crauselItems(
                          'https://l.top4top.io/p_24552lqfd3.jpg'), //(add_img[2])
                    ],
                    options: CarouselOptions(
                      height: 210,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInToLinear,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FoodTypes('https://k.top4top.io/p_2455eh99y5.jpg',
                        'Food'), //'cat_img[0],cat_name[0]'
                    FoodTypes('https://l.top4top.io/p_2455s5v3j5.jpg',
                        'Shops'), //'cat_img[1],cat_name[2]'
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FoodTypes('https://k.top4top.io/p_2455f5o572.jpg',
                        'Bulter'), //'cat_img[2],cat_name[2]'
                    FoodTypes('https://g.top4top.io/p_2455b5yn11.jpg',
                        'Wallet'), //'cat_img[3],cat_name[3]'
                  ],
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cashback',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 110,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Earn back credits and redeem them on your future orders',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'from the same store!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      meal(widget.photo, widget.name, 13, 30, widget.rate,
                          'lunch'),
                      meal('https://j.top4top.io/p_24552571y1.jpg',
                          'Burger classic', 13, 30, 4.1, 'dinner'),
                      meal('https://a.top4top.io/p_2455q22k74.jpg', 'Shawarma',
                          13, 30, 4.4, 'lunch'),
                      ViewAll(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Breakfast Time',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Order now from a wide selection of breakfast specials!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 145,
                  child: ListView(
                    //->listview.builder( itemcount:cat_img.length,scrollDirection: Axis.horizontal,itemBuilder:(context,index)
                    scrollDirection: Axis.horizontal,
                    children: [
                      FoodTypescircle('https://h.top4top.io/p_2455mbaxg2.jpg',
                          'Saray Kibbeh'), //return FoodTypescircle(cat_img[index],cat_name[index]);
                      FoodTypescircle('https://i.top4top.io/p_24558uv6d3.jpg',
                          'Beef Kabab'), //and so on for other listviews...
                      FoodTypescircle('https://j.top4top.io/p_2455l2i3q4.jpg',
                          'Baklaa With\nGhee'),
                      Container(
                          width: 120,
                          height: 40,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF1fad90),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cashback',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 110,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Earn back credits and redeem them on your future orders',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'from the same store!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      meal('https://b.top4top.io/p_2455cot0x5.jpg',
                          'Meat collection', 23, 45, 4.1, '45000'),
                      meal('https://h.top4top.io/p_2455cqd9d1.jpg', 'Beef mrat',
                          23, 45, 4.1, '8000'),
                      meal('https://i.top4top.io/p_2455m3pje2.jpg',
                          'Groung meat', 56, 78, 3.5, '10000'),
                      ViewAll(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Line() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 10,
      color: Colors.grey.withOpacity(0.1),
      margin: EdgeInsets.only(top: 12, bottom: 10),
    );
  }

  Container FoodTypes(String img, String title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 6,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 180,
      height: 120,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Container FoodTypescircle(String img, String title) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 4, top: 7),
      padding: EdgeInsets.all(5),
      width: 110,
      height: 80,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Container meal(String photo, String name, int min, int max, double rate,
      String mealname) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 4, top: 7),
      padding: EdgeInsets.only(left: 15, top: 7),
      width: 400,
      height: 244,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 260,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(photo),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 220,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      timePereiod(min, max),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => detailPage(
                                  photo: photo, Name: name, Rate: rate)));
                        },
                        child: Text(
                          name,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 205,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$\$ . $mealname',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFF1fad90),
                                  size: 17,
                                ),
                                Text(
                                  '$rate',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFea6309).withOpacity(0.07),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              color: Color(0xFFea6309),
                              size: 17,
                            ),
                            Text(
                              ' 25% off',
                              style: TextStyle(
                                  color: Color(0xFFea6309), fontSize: 9),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.blue.withOpacity(0.1),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                Text(
                                  '  Earn Points',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 9),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container timePereiod(int min, int max) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5),
      width: 70,
      height: 38,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 4,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$min - $max',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            'mins',
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Container dashedLine() {
    return Container(
      margin: EdgeInsets.only(left: 1, right: 1, top: 3, bottom: 5),
      width: 30,
      height: 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.withOpacity(0.4),
      ),
    );
  }

  Container crauselItems(String img) {
    return Container(
      width: 400,
      height: 260,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Container ViewAll() {
    return Container(
        width: 180,
        height: 40,
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF1fad90),
                    size: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'View all',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
