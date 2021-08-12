import 'package:ecommerce/pages/home/widgets/appbar.dart';
import 'package:ecommerce/pages/home/widgets/booklist.dart';
import 'package:ecommerce/pages/home/widgets/bottom_navigationbar.dart';
import 'package:ecommerce/pages/home/widgets/fab.dart';
import 'package:ecommerce/pages/home/widgets/header.dart';
import 'package:ecommerce/pages/home/widgets/icons_list.dart';
import 'package:ecommerce/pages/home/widgets/new_books.dart';
import 'package:ecommerce/pages/home/widgets/searchbar.dart';
import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [...buildHeader(), buildSearchBar(), buildIconList(),
          BuildBookList(),
          BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
     bottomNavigationBar: buildBottomNavigationBar()
    );
  }
}
