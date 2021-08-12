class BookModel {
  String image;
  String secondImage;
  String title;
  String subtitle;
  bool favourite;

  BookModel(
      {required this.title,
      required this.favourite,
      required this.image,
      required this.secondImage,
      required this.subtitle});

  static BookModel newBook = BookModel(
      image: "assets/images/new_book_1.jpeg",
      secondImage: "assets/images/new_book_2.jpeg",
      title: "Raft of Stars",
      favourite: true,
      subtitle: "Andew j. Graff");

  static List<BookModel> books = [
    BookModel(
        image: "assets/images/book_1.jpeg",
        secondImage: "assets/images/book_1.jpeg",
        title: "The Martian",
        subtitle: "Andy Weir",
        favourite: false),
    BookModel(
        image: "assets/images/book_2.jpeg",
        secondImage: "assets/images/book_2.jpeg",
        title: "Midnight war",
        subtitle: "Mateo Martinex",
        favourite: false),
    BookModel(
        image: "assets/images/book_3.jpeg",
        secondImage: "assets/images/book_3.jpeg",
        title: "The Hypocrite world",
        subtitle: "Sophia Hill",
        favourite: false),
    BookModel(
        image: "assets/images/book_4.jpeg",
        secondImage: "assets/images/book_4.jpeg",
        title: "Amara The Brave",
        subtitle: "Matt Zhang",
        favourite: false),
    BookModel(
        image: "assets/images/book_5.jpeg",
        secondImage: "assets/images/book_5.jpeg",
        title: "Harry Potter",
        subtitle: "A History of Magic",
        favourite: true),
  ];
}
