import 'package:flutter/material.dart';
class burgers extends StatefulWidget {

  final String img;
  final String name;
  int price;
  burgers({
    required this.img,
    required this.name,
    required this.price,
  });
  @override
  State<burgers> createState() => _burgersState();
}
int n=1;

class _burgersState extends State<burgers> {
  @override
  Widget build(BuildContext context) {

    int i=0;
    List<int> numbers = [2];
    int price=6000;
    numbers[i]=price;
    i++;
    int p=numbers[0];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_rounded,color: Colors.black,)),
        actions: [
          Icon(Icons.share_outlined,color: Colors.black,),
          SizedBox(width: 15,),
          Icon(Icons.favorite_border_sharp,color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      body:
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20,top: 30,bottom: 30),
              margin: EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text(widget.name,style: TextStyle(color: Color(0xFF1fad90),fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(top: 12,bottom: 5,left: 12,right: 12),
                    height: 70,
                    margin: EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Additions',style: TextStyle(color: Color(0xFF1fad90),fontSize: 16),),
                            SizedBox(height: 10,),
                            Text('optinal',style: TextStyle(color: Colors.grey,fontSize: 14),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Special nstructions',style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(height: 25,),
                  Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 12,right: 12),
                      height: 50,
                      margin: EdgeInsets.only(right: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Center(
                        child: TextField (
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                              hintText: 'Any spcial notes for this dish...'
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 25,),

                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          GestureDetector(
                            onTap:    (){
                              setState(() {
                                n++;
                                widget.price=widget.price+p;
                              });
                            },
                            child: Container(width: 40,height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Icon(Icons.add),
                            ),
                          ),
                          GestureDetector(
                            child: Container(width: 80,height: 40,
                              margin: EdgeInsets.only(left: 30,right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text('$n',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:    (){
                              setState(() {
                                if(n!=0){
                                  n--;
                                  widget.price=widget.price-p;}
                              });
                            },
                            child: Container(width: 40,height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Center(child: Icon(Icons.minimize)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text('${widget.price} IQD',style: TextStyle(
                      color:Color(0xFF1fad90),

                    ),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1fad90).withOpacity(0.9),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                                Text('$n items',style: TextStyle(
                                       color: Colors.white,),),

                            Text('Add to cart',style: TextStyle(
                              color: Colors.white,),),

                            Text('IQD ${widget.price}',style: TextStyle(
                              color: Colors.white,),),
                          ],
                        )),
                      ),
                    ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}