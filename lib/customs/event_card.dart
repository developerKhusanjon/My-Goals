import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  final double height;

  EventCard(this.height);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  int _date = 16;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Positioned(
      bottom: 0,
      left: mediaQuery.size.width*.03,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: mediaQuery.size.width*.94,
        height: mediaQuery.size.height*widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )
        ),
      ),
    );
  }
}
