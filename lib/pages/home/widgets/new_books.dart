import 'package:ecommerce/models/book_model.dart';
import 'package:ecommerce/pages/book/bookpage.dart';
import 'package:flutter/material.dart';

final newBook = BookModel.newBook;

class BuildNewBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot New Release",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookPage(
                          book: newBook,
                        )));
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        newBook.image,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          newBook.subtitle,
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 10),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("4.8"),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                          minimumSize: Size(6, 6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom)
      ],
    );
  }
}
