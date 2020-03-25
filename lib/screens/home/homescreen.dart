import 'package:flashcards/screens/home/components/CategoriesTile.dart';
import 'package:flutter/material.dart';
import 'package:flashcards/theme/style.dart' as Theme;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.Colors.defaultColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Flash Cards",
                      style: Theme.TextStyles.homeTitle,
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color(0xFF22E09B),
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.menu,
                        color: Theme.Colors.defaultColor,
                      ),
                    )
                  ],
                ),
              ),

              //Categories
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 80,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoriesTile(
                        category: "Objetos",
                      );
                    }),
              ),
              
              //Highlits
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Destaques",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.black87,
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container();
                        }),
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
