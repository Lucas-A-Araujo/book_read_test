import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/book.dart';

class BookPage extends StatelessWidget {
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

class ParagraphSizeExample extends StatelessWidget {
  final DataBook dataBook = DataBook();
  final String playerIconPlaceholder = "<PLAYER_ICON>";
  final double iconHeight = 50.0;

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
      List<String> textComplet, TextStyle style, Size size) {
    String text = textComplet.join(' ');
    List<Page> pages = [];
    List<PageElement> currentPageElements = [];
    String page = '';
    List<String> words = text.split(' ');
    double height = 0.0;
    String testPage;

    for (int i = 0; i < words.length; i++) {
      String word = words[i];
      if (word == "PLAYER_SAPO123") {
        if (page.isNotEmpty) {
          currentPageElements.add(PageElement.text(page));
          height += _getParagraphHeight(page, style, size.width);
          page = '';
        }
        currentPageElements.add(PageElement.icon());
        height += iconHeight;

        if (i + 1 < words.length) {
          String nextWord = words[i + 1];
          testPage = '$page $nextWord';
          double testHeight = _getParagraphHeight(testPage, style, size.width);

          if (height + testHeight < size.height - 40) {
            page = nextWord;
            i++;
          }
        }
      } else {
        testPage = page + ' ' + word;
        double testHeight = _getParagraphHeight(testPage, style, size.width);

        if (height + testHeight > size.height - (size.height * 0.1)) {
          if (page.isNotEmpty) {
            currentPageElements.add(PageElement.text(page));
            height += _getParagraphHeight(page, style, size.width);
          }
          pages.add(Page(currentPageElements));
          currentPageElements = [];
          page = word;
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
