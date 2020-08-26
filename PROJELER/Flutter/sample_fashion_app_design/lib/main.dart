import 'package:app/pages/ayrintiSayfa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ModaApp",
      color: Colors.redAccent,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  var tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBarOlustur(),
      appBar: appBarOlustur(),
      body: bodyOlustur(),
    );
  }

  Widget topBottom(String s, String t) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(image: AssetImage(s), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 45,
              left: 45,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                        image: AssetImage(t), fit: BoxFit.fitWidth)),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 25,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomNavigationBarOlustur() {
    return Material(
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget appBarOlustur() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        "ModaApp",
        style: TextStyle(
          color: Colors.black87,
          fontFamily: "Montserrat",
          fontSize: 24,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.camera_enhance,
              color: Colors.black87,
            ),
            onPressed: () {}),
      ],
    );
  }

 Widget bodyOlustur() {

    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              //color: Colors.greenAccent,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              height: 130,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  topBottom("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(width: 20),
                  topBottom("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(width: 20),
                  topBottom("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(width: 20),
                  topBottom("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(width: 20),
                  topBottom("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(width: 20),
                  topBottom("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Material(
                //color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  height: 500,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage("assets/model1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 200),
                          Icon(Icons.more_vert,
                              color: Colors.black12, size: 26),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AyrintiSayfa(
                                    imagePath: "assets/modelgrid1.jpeg",
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                                height: 250,
                                width:
                                MediaQuery.of(context).size.width - 210,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AyrintiSayfa(
                                        imagePath: "assets/modelgrid2.jpeg",
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 122,
                                    width: MediaQuery.of(context).size.width -
                                        250,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AyrintiSayfa(
                                        imagePath: "assets/modelgrid3.jpeg",
                                      ),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                    height: 122,
                                    width: MediaQuery.of(context).size.width -
                                        250,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Container(
                            color: Colors.grey.withOpacity(0.2),
                            height: 25,
                            width: MediaQuery.of(context).size.width - 320,
                            alignment: Alignment.center,
                            child: Text(
                              "# Lous Vitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.grey.withOpacity(0.2),
                            height: 25,
                            width: MediaQuery.of(context).size.width - 310,
                            alignment: Alignment.center,
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 1.5),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Icon(Icons.reply_all,
                              color: Colors.grey.withOpacity(0.5), size: 25),
                          SizedBox(width: 5),
                          Text(
                            "1.7K",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(Icons.insert_comment,
                              color: Colors.grey.withOpacity(0.5), size: 25),
                          SizedBox(width: 5),
                          Text(
                            "500",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 176,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.favorite_border,
                                    color: Colors.red, size: 25),
                                SizedBox(width: 5),
                                Text(
                                  "2.7K",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
