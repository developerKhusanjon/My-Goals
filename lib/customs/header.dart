import 'dart:html';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import './expense_chart.dart';
import '../models/Expense.dart';

class Header extends StatelessWidget {
  static List<charts.Series<Expense, String>> _series = [
    // ignore: missing_required_param
    charts.Series<Expense, String>(
      id: 'Expense',
      domainFn: (Expense expense, _) => expense.category,
      measureFn: (Expense expense, _) => expense.value,
      labelAccessorFn: (Expense expense, _) => '\$${expense.value}',
      colorFn: (Expense expense, _) =>
          charts.ColorUtil.fromDartColor(expense.color),
      data: [
        Expense('Personal Business',9.99,Color(0xff40bad5)),
        Expense('Self Study',43.67,Color(0xffe8505b)),
        Expense('Work',49.99,Color(0xfffe91ca)),
        Expense('Relaxation',149.99,Color(0xfff6d743)),
        Expense('Others',249.99,Color(0xfff57b51)),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);

    return Container(
      width: double.infinity,
      height: mediaQuery.size.height*.4,
      color: primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150,
            child: ExpenseChart(_series,animate: true),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  width: 124,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 4,),
                      const Text(
                        'Add Goal',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  width: 72,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Reports',
                        style: TextStyle(
                          fontSize: 12,
                          color: primaryColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: const Text(
              'My Plans',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
