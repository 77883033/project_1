

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_1/String/string.dart';
import 'package:project_1/data/data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<Homepage> {
  final List<String> imgList = [
    'https://i.pinimg.com/236x/11/71/12/1171124b08a65b2d3d2a2c05babaf756.jpg',
'https://i.pinimg.com/564x/e5/3f/48/e53f4870c7da1a826343cc5a96d966d8.jpg',
'https://i.pinimg.com/236x/02/60/43/026043860daf7aa51752b90e325aca38.jpg',
'https://i.pinimg.com/736x/82/65/a5/8265a5f4903a8e8e00a74eec2ec36613.jpg',
'https://i.pinimg.com/564x/89/c5/dc/89c5dc61548e87025ab1c8d3126d3103.jpg',
'https://i.pinimg.com/236x/5d/b8/53/5db8534a28adce0e731c3a0f67f6fabe.jpg',
    'https://i.pinimg.com/564x/51/76/75/5176751377fbae5e7408ebba7296dde3.jpg',
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('SHOENIVERSE', style: myStyle2(23,Colors.white,FontWeight.bold),),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle shopping cart button press
            },
          ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bg_shoe.jpg'),fit: BoxFit.fill),
                color: Colors.blue,
              ),
            ),


            Container(
              padding: EdgeInsets.only(top: 10),
              height: 595,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/bg_shoe2.jpg'),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('SHOENIVERSE MENU',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  Divider(height: 2,color: Colors.red,),

                  ListTile(
                    title: Text('Home',style: TextStyle(fontSize: 18),),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 2,color: Colors.red,),
                  ListTile(
                    title: Text('Men',style: TextStyle(fontSize: 18)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 2,color: Colors.red,),
                  ListTile(
                    title: Text('Woman',style: TextStyle(fontSize: 18)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 2,color: Colors.red,),
                  ListTile(
                    title: Text('Kids',style: TextStyle(fontSize: 18)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 2,color: Colors.red,),

                  ListTile(
                    title: Text('About',style: TextStyle(fontSize: 18)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 2,color: Colors.red,),
                ],
              ),
            ),

          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 10,),
        
            Container(
              height: 240,
              width: 360,
              color: Colors.white,
              child: Card(
                elevation: 10,
                color: Colors.redAccent.withOpacity(0.999),
                child: CarouselSlider(
                  items: imgList.map((e) {
                    return Image.network(e);
                  }).toList(),
                  options: CarouselOptions(
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      enlargeCenterPage: true,
                      enlargeFactor: 0.9,
        
                      onPageChanged: (value, _) {
                        setState(() {
                          _currentPage = value;
                        });
                      }),
                ),
              ),
            ),
            buildIndicator(),
            
            SizedBox(height: 15,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('ALL', style: myStyle2(19,Colors.red,FontWeight.bold),),
        
                Text('MAN', style: myStyle2(19,Colors.white,FontWeight.bold),),
                Text('WOMAN', style: myStyle2(19,Colors.white,FontWeight.bold),),
                Text('KIDS', style: myStyle2(19,Colors.white,FontWeight.bold),),
              ],
            ),

            SizedBox(height: 15,),


            /// Shoe GridView
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: allShoes.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 1.72),
        
              itemBuilder: (context, index) {
                return InkWell(onTap: () {
                  ;
                },
        
                  child: Card(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.999),
                          border: Border.all(color: Colors.white,width: 1)
                      ),
                      padding: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Hero(
                                        tag:'${allShoes[index].SimgUrl}',
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          maxRadius: 70,
                                          backgroundImage: AssetImage("${allShoes[index].SimgUrl}"),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${allShoes[index].Sname}", style: myStyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                                      Text("${allShoes[index].Sbrand}", style: myStyle(16, Colors.black,), textAlign: TextAlign.center,),
                                      Text("${allShoes[index].Sprice}", style: myStyle(16, Colors.black,), textAlign: TextAlign.center,),

                                      MaterialButton(
                                        height: 40,
                                        onPressed: (){},
                                        child: Container(
                                            height: 40,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.white),

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("BUY", style: TextStyle(fontWeight: FontWeight.bold),),
                                                Icon(Icons.account_balance_wallet_outlined)
                                              ],)
                                        ),
                                      ),


                                                                                MaterialButton(
                                                                                  height: 40,
                                                                                  onPressed: (){},
                                                                                  child: Container(
                                        height: 40,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white),

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.shopping_cart_outlined)
                                          ],)
                                                                                  ),
                                                                                ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        
        
        
        
          ],
        ),
      ),
    );
  }



  buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 5,
            width: i == _currentPage ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == _currentPage ? Colors.redAccent : Colors.grey,
            ),
          )
      ],
    );
  }
}
