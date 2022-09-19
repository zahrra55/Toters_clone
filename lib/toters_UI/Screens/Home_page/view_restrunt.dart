import 'package:flutter/material.dart';
import 'package:the_final_toters_api/toters_UI/Screens/Home_page/view_meal_details.dart';


class detailPage extends StatefulWidget {

  final String photo;
  final String Name;
  final double Rate;
  detailPage({
    required this.photo,
    required this.Name,
    required this.Rate,
  });
  @override
  State<detailPage> createState() => _detailPageState();
}


final List meals = [
  {
    "photo": 'images/kima.jpg',
    "title": 'Happy Hour',
    "price": '3000',
  },
  {
    "photo": 'images/burgerz.jpg',
    "title": 'Happy Hour',
    "price": '5000',
  },
  {
    "photo": 'images/gaas.jpg',
    "title": 'Happy Hour',
    "price": '2000',
  },
];
class _detailPageState extends State<detailPage> {
  final String img='images/kima.jpg';
  final String name='kima';
  final int price= 6000;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                meal(widget.photo, widget.Name, 13, 30, widget.Rate,
                    'We serve most delicious selection of Iragi traditional food.'),

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Popular',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 228,
                  margin: EdgeInsets.only(left: 10),
                  child: ListView.builder(
                      itemCount: 1,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          width: 220,
                          margin: EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(widget.photo),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context)=>burgers(img: img, price: price,name: name,)));
                                },
                                child: Text(
                                  meals[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                '${meals[index]['price']} IQD',
                                style: TextStyle(color: Color(0xFF1fad90)),
                              )
                            ],
                          ),
                        );
                      }),
                ),


                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 608,
                  child: ListView.builder(
                      itemCount: meals.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(meals[index]['photo']),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    meals[index]['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${meals[index]['price']} IQD',
                                    style: TextStyle(color: Color(0xFF1fad90)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),

              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20,
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container meal(String photo, String name, int min, int max, double rate,
      String description) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width + 205,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(photo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 230,
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
                          print('clicked');
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
                        width: 10,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 30,
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
                                      color: Color(0xFFea6309), fontSize: 12),
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
                            width: 95,
                            height: 30,
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
                                        color: Colors.blue, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '$rate',
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          Text(
                            '   Based on costemars ratings',
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 245,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1fad90),
                        size: 20,
                      ),
                    ],
                  ),
                  Container(
                    width: 380,
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, right: 10, left: 15),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Zahraa Ibrahim  ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Color(0xFF1fad90),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Color(0xFF1fad90),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\"Not so bad but...\"',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        'Read more',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF1fad90),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 380,
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, right: 10, left: 15),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.edit_note,
                        size: 25,
                        color: Color(0xFF1fad90),
                      ),
                      Text(
                        '  Write a review',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1fad90),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    color: Colors.grey.withOpacity(0.1),
                    margin: EdgeInsets.only(top: 12, bottom: 10),
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

  Container crauselItems(String img) {
    return Container(
      width: 400,
      height: 200,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
