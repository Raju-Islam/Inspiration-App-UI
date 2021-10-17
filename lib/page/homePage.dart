// ignore_for_file: file_names, deprecated_member_use, unused_local_variable, unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inspiration_app_ui/config/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
                padding: EdgeInsets.all(width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Find your",
                      style: TextStyle(
                          fontSize: fontSize(20), color: Colors.black87),
                    ),
                    SizedBox(
                      height: height / 85,
                    ),
                    Text(
                      "Inspiration",
                      style: TextStyle(
                          color: Colors.black87, fontSize: fontSize(35)),
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you'er looking for",
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: fontSize(18))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Promo Today",
                          style: TextStyle(
                              fontSize: fontSize(15),
                              fontWeight: FontWeight.bold),
                        )),
                        SizedBox(height: 12,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard("asset/1.jpg"),
                          promoCard("asset/3.jpg"),
                          promoCard("asset/4.jpg"),
                          promoCard("asset/5.jpg"),
                          promoCard("asset/6.jpg"),
                          promoCard("asset/7.jpg"),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                         image:DecorationImage(image: AssetImage("asset/4.jpg"),fit: BoxFit.cover)
                      ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                           alignment: Alignment.bottomLeft,
                           child:Text("Design by Raju Islam",style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold),)
                                            ),
                        ),
                    ),
                    SizedBox(height: 50,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("@Copyright",style:TextStyle(color: Colors.grey),))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(aspectRatio: 2.5 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
          ),
          child: Container(
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.9],
              colors: [
               Colors.black.withOpacity(0.8),
               Colors.black.withOpacity(0.1)
            ])
          ),
        
          ),
    ),
    );
  }
}
