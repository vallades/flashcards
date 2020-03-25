import 'package:flutter/material.dart';
import 'package:flashcards/theme/style.dart' as Theme;

class CategoriesTile extends StatelessWidget {
  final String category;

  CategoriesTile({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        children: <Widget>[
          Text(
            category,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
