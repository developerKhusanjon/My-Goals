import 'package:flutter/material.dart';

class Event {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  Event({
    @required  this.id,
    @required  this.title,
    @required  this.value,
    @required  this.category,
    @required  this.iconData,
    @required  this.color
  });
}


class Events with ChangeNotifier{
  List<Event> _events = [
    Event(
      id: 1,
      title: 'Reading',
      value
    )
  ]
}