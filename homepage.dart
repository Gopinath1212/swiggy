import 'dart:core';


import 'package:flutter/material.dart';


import 'drawerMenu.dart';
class HomeScreen1 extends StatefulWidget {
  HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  double translateX = 0.0;

  double translateY = 0.0;

  double scale = 1;

  bool toggle = false;

  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        DrawerMenu(),
        AnimatedContainer(
          duration: Duration(milliseconds: 1500),
          transform: Matrix4.translationValues(translateX,translateY, 0)..scale(scale),
          child: ClipRRect(
            borderRadius: (toggle)?BorderRadius.circular(20):BorderRadius.circular(0),
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(

                  icon: Icon(Icons.menu,color: Colors.black),
                  onPressed: (){
                    toggle = !toggle;
                    if (toggle){
                      translateX = 200;
                      translateY = 80;
                      scale = 0.8;
                    }
                    else {
                      translateX = 0.0;
                      translateY = 0.0;
                      scale = 1;
                    }
                    setState((){});
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>DrawerMenu(),),);
                  },),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delivering to",style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.black45),
                    ),
                    InkWell(

                      onTap: (){
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen1(),),);
                        // Navigator.pop(context);

                      },
                      child: Row   (
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Current Location",style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),),
                          Icon(Icons.keyboard_arrow_down,color: Colors.blueGrey,size: 30,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 45,
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.only(left: 5),
                              decoration:BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius:BorderRadius.circular(30),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Icon(Icons.search),Text("Search Foods",style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black45),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.filter_center_focus),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      titleWidget(context,"Category"),
                      Container(
                        height: 115,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,

                            itemCount: listCards.length,
                            itemBuilder: (context,index){
                              return CategoryCard(categoryModel: listCards[index]);

                            }),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductItemScreen()),);

                              },
                              child: Container(
                                height: 220,
                                margin: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                  image: DecorationImage(image: AssetImage("assets/cafe.jpeg"),
                                      fit: BoxFit.cover),

                                ),
                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food1.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food2.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food3.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ), Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food4.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.blueGrey),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      ),
                      Text("Popular"),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 5,
                                  blurRadius: 5
                              ),
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 220,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft:  Radius.circular(10),topRight: Radius.circular(10),),
                                image: DecorationImage(image: AssetImage("assets/food5.jpeg"),
                                    fit: BoxFit.cover),

                              ),
                            ),

                            Text("Food Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.blueGrey,),
                                Text("4.5",style: TextStyle(color: Colors.indigoAccent),),
                                Text("128 ratings)"),
                                Spacer(),
                                Text("Cafe Western Food"),
                                Text("\$5"),

                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
Widget titleWidget(BuildContext context, String title) {
  return Text(
    title,
    style: Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
  );
}

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  CategoryCard({
    required this.categoryModel
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(17),
          margin: EdgeInsets.only(top: 5, bottom: 2, right: 5, left: 8),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(categoryModel.imageUrl),
        ),
        Text(categoryModel.title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black87))
      ],
    );
  }
}

class CategoryModel{
  String imageUrl;
  String title;
  String remoteUrl;
  CategoryModel(this.imageUrl,this.title,{required this.remoteUrl});
}
List<CategoryModel> listCards = [
  CategoryModel("assets/offer.jpeg","Offer", remoteUrl: ''),
  CategoryModel("assets/drinks.jpeg","Drinks" ,remoteUrl: ''),
  CategoryModel("assets/asian.jpeg","Asian", remoteUrl: ''),
  CategoryModel("assets/pizza.jpeg","Pizza", remoteUrl: ''),
  CategoryModel("assets/burger.jpeg","Burger", remoteUrl: ''),
];