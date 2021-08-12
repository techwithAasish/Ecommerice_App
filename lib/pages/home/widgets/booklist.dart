import 'package:ecommerce/models/book_model.dart';
import 'package:ecommerce/pages/book/bookpage.dart';
import 'package:flutter/material.dart';

final List<BookModel> books = BookModel.books;

class BuildBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.black.withOpacity(0.1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Sellers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("See all"),
                      style: TextButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          backgroundColor: Colors.deepOrange,
                          primary: Colors.white,
                          minimumSize: Size(5, 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    books.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(
                              bottom: 16, right: 8, left: index == 0 ? 8 : 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookPage(
                                            book: books[index],
                                          )));
                            },
                            child: Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 4,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        books[index].image,
                                        height: 180,
                                        width: 130,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Container(
                                  width: 120,
                                  child: Text(
                                    books[index].title,
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  child: Text(
                                    books[index].subtitle,
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blueGrey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            )
          ],
        ));
  }
}
