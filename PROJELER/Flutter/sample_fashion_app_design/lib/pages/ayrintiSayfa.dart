import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AyrintiSayfa extends StatefulWidget {
  String imagePath;

  AyrintiSayfa({this.imagePath});

  @override
  _AyrintiSayfaState createState() => _AyrintiSayfaState();
}

class _AyrintiSayfaState extends State<AyrintiSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyOlustur(),
    );
  }

  Widget bodyOlustur() {
    return Stack(
      children: <Widget>[
        Hero(
          tag: widget.imagePath,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          right: 10,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.5),
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          image: DecorationImage(
                              image: AssetImage("assets/dress.jpg"),
                              fit: BoxFit.contain),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "LAMINATED",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Louis Vittion",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/louisvuitton.jpg",
                                      ),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Some stuff about dresses",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1.0,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "\$7000",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_forward),
                        backgroundColor: Colors.brown,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2 - 20,
          left: 10,
          child: Container(
            color: Colors.black.withOpacity(0.5),
            width: 147,
            height: 25,
            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Center(
                  child: Text(
                    "LAMINATED",
                    textScaleFactor: 0.8,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
