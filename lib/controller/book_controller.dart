import 'package:flutter_application_1/data/book.dart';

class BookController {
  List bookList = [];

  void getBook() async {
    List books = await DataBook().getBook();
    bookList = bookList;
  }
}
