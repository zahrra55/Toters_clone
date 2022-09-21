import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final List types = [
    {
      'photo': 'https://g.top4top.io/p_2455m1rj62.jpg',
      'title': 'Happy Hour',
      'describtion': 'Only for one hour',
      'stores': 3,
    },
    {
      'photo': 'https://j.top4top.io/p_2455kq5if5.jpg',
      'title': 'Weekly Discounts',
      'describtion': 'Get your discount now!',
      'stores': 5,
    },
    {
      'photo': 'https://f.top4top.io/p_2455rn5o51.jpg',
      'title': 'Cashback',
      'describtion': 'Earn more money',
      'stores': 4,
    },
    {
      'photo': 'https://f.top4top.io/p_2455tzfee4.jpg',
      'title': 'Flower Bouquets',
      'describtion': 'Hand-picked Flowers',
      'stores': 1,
    },
    {
      'photo': 'https://g.top4top.io/p_2455j7des1.jpg',
      'title': 'Definitely Eatalian',
      'describtion': 'The world\'s favorites',
      'stores': 3,
    },
    {
      'photo': 'https://h.top4top.io/p_24550rtke3.jpg',
      'title': 'Retail on Toters',
      'describtion': 'Shop What you like',
      'stores': 6,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          'Search for store or item ',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 608,
                child: ListView.builder(
                    itemCount: types.length,
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
                              height: 110,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(types[index]['photo']),
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
                                  height: 20,
                                ),
                                Text(
                                  types[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(types[index]['describtion']),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '${types[index]['stores']} stors',
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Color(0xFF06b493),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://d.top4top.io/p_24550v2e92.jpg',
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order anything!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'editors now use Lorem Ipsum as their',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    Text(
                      'for lorem ipsum will uncover many web infancy.',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
