import 'package:flutter/material.dart';
import 'package:my_goals/customs/header.dart';
import '../customs/event_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = .55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Personal Development',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: (){},
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Header(),
            ],
          ),
          EventCard(_height)
        ],
      ),
    );
  }
}
