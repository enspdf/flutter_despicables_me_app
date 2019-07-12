import 'package:despicables_me_app/styleguide.dart';
import 'package:despicables_me_app/widgets/character_widget.dart';
import 'package:flutter/material.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Despicable Me', style: AppTheme.display1),
                  TextSpan(text: '\n'),
                  TextSpan(text: 'Characters', style: AppTheme.display2),
                ],
              ),
            ),
          ),
          Expanded(
            child: CharacterWidget(),
          ),
        ],
      ),
    );
  }
}