import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
  Padding(
    padding: EdgeInsets.only(left: 16, top: 8),
    child: Text(
      "Bookshelf",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Text(
      "Shop with Us",
      style: TextStyle(color: Colors.black45),
    ),
  )
];
