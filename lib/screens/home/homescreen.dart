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
                height: 110,

              )
            ],
          ),
        ),
      ),
    );
  }
}
