import 'package:ecommerce/models/book_model.dart';
import 'package:ecommerce/pages/book/widgets/book_display.dart';
import 'package:ecommerce/pages/book/widgets/description.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  final BookModel book;
  BookPage({required this.book});
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.book.favourite = !widget.book.favourite;
                    });

                  },
                  icon: Icon(
                    widget.book.favourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  )))
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                ...buildBookDisplay(book: widget.book),
                ...buildDescription()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
