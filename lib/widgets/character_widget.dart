import 'package:despicables_me_app/models/character.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 0.55 * screenHeight,
            width: 0.9 * screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: characters[0].colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
