import 'package:flutter/material.dart';

Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
          decoration: InputDecoration(
        hintText: "Search a book",
        fillColor: Colors.black.withOpacity(0.1),
        filled: true,
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
      )),
    );
