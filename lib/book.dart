import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/book_controller.dart';
import 'package:flutter_application_1/data/book.dart';

import 'modal/history_book_modal.dart';

/* class HistoryBookModal {
  String? type;
  String? body;
  int? size;
  String? color;
  num? width;
  num? height;

  HistoryBookModal(
      {this.type, this.body, this.size, this.color, this.width, this.height});
} */

class BookPage extends StatefulWidget {
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  BookController bookController = BookController();

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    await bookController.getBook();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tamanho do Parágrafo'),
          toolbarHeight: 40,
        ),
        body: ParagraphSizeExample(),
      ),
    );
  }
}

class PageElement {
  final String? text;
  final bool isIcon;

  PageElement.text(this.text) : isIcon = false;
  PageElement.icon()
      : isIcon = true,
        text = null;
}

class Page {
  final List<PageElement> elements;

  Page(this.elements);
}

/* class HistoryBookModal {
  String? type;
  String? body;
  int? size;
  String? color;
  num? width;
  num? height;

  HistoryBookModal(
      {this.type, this.body, this.size, this.color, this.width, this.height});
} */

class ParagraphSizeExample extends StatelessWidget {
  final DataBook dataBook = DataBook();
  final String playerIconPlaceholder = "<PLAYER_ICON>";
  final double iconHeight = 50.0;
  //HistoryBookModal

  /* final List<String> text = [
    '1 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '2 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '3 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.',
    'PLAYER_SAPO123',
    '4 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '5 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.',
    'PLAYER_SAPO123',
    '6 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.',
    'PLAYER_SAPO123',
    '7 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '8 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '9 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '10 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '11 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '12 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '13 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '14 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '15 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '16 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '17 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '18 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '19 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '20 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '21 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '22 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n'
  ]; */

  @override
  Widget build(BuildContext context) {
    List<Page> pages = _splitTextIntoPages(
        dataBook.text, TextStyle(fontSize: 20), MediaQuery.of(context).size);

    return PageView.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return Container(
          //color: Colors.blue,
          child: ListView(
            children: pages[index].elements.map((element) {
              if (element.isIcon) {
                return Container(
                  height: iconHeight,
                  //color: Colors.amber,
                  child: Icon(Icons.play_circle_fill),
                );
              } else {
                return Text(element.text ?? '',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20, /* backgroundColor: Colors.red */
                    ));
              }
            }).toList(),
          ),
        );
      },
    );
  }

  List<Page> _splitTextIntoPages(
      List<HistoryBookModal> textComplet, TextStyle style, Size size) {
    String text = textComplet.join(' ');
    List<Page> pages = [];
    List<PageElement> currentPageElements = [];
    String page = '';
    List<String?> words = textComplet.map((book) => book.body).toList();
    double height = 0.0;
    String testPage;

    for (int i = 0; i < words.length; i++) {
      HistoryBookModal word = textComplet[i];
      if (word.type == "play") {
        if (page.isNotEmpty) {
          currentPageElements.add(PageElement.text(page));
          height += _getParagraphHeight(page, style, size.width);
          page = '';
        }
        currentPageElements.add(PageElement.icon());
        height += iconHeight;

        if (i + 1 < words.length) {
          String nextWord = words[i + 1]!;
          testPage = '$page $nextWord';
          double testHeight = _getParagraphHeight(testPage, style, size.width);

          if (height + testHeight < size.height - 40) {
            page = nextWord;
            i++;
          }
        }
      } else {
        testPage = page + ' ' + word.body.toString();
        double testHeight = _getParagraphHeight(testPage, style, size.width);

        if (height + testHeight > size.height - (size.height * 0.1)) {
          if (page.isNotEmpty) {
            currentPageElements.add(PageElement.text(page));
            height += _getParagraphHeight(page, style, size.width);
          }
          pages.add(Page(currentPageElements));
          currentPageElements = [];
          page = word.body.toString();
          height = _getParagraphHeight(page, style, size.width);
        } else {
          page = testPage;
        }
      }
    }

    if (page.isNotEmpty) {
      currentPageElements.add(PageElement.text(page));
    }

    if (currentPageElements.isNotEmpty) {
      pages.add(Page(currentPageElements));
    }

    return pages;
  }

  double _getParagraphHeight(String text, TextStyle style, double maxWidth) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      maxLines: null,
    )..layout(maxWidth: maxWidth);
    return textPainter.size.height;
  }
}
