import 'package:flutter/material.dart';

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
  final String text = 'Este é um exemplo de parágrafo que precisamos medir.';
  final List<String> text2 = [
    '1 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '2 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '3 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    'PLAYER_SAPO123',
    '4 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    '5 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
    'PLAYER_SAPO123',
    '6 Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Quem manda na minha terra sou euzis! Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Diuretics paradis num copo é motivis de denguis.\n',
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
  ];
  final String playerIconPlaceholder = "<PLAYER_ICON>";

  @override
  Widget build(BuildContext context) {
    List<Page> pages = _splitTextIntoPages(
        text2, TextStyle(fontSize: 20), MediaQuery.of(context).size);

    return PageView.builder(
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return ListView(
          children: pages[index].elements.map((element) {
            if (element.isIcon) {
              return Container(
                height: 50,
                color: Colors.amber,
                child: Icon(Icons.play_circle_fill),
              );
            } else {
              return Text(element.text ?? '', style: TextStyle(fontSize: 20));
            }
          }).toList(),
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
    double iconHeight = 50.0;
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

          if (height + testHeight < size.height) {
            page = nextWord;
            i++;
          }
        }
      } else {
        testPage = page + ' ' + word;
        double testHeight = _getParagraphHeight(testPage, style, size.width);

        if (height + testHeight > size.height - 60) {
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
      maxLines: null,
    )..layout(maxWidth: maxWidth);
    return textPainter.size.height;
  }
}
