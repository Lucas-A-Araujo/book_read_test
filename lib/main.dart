import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/book.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tamanho do Parágrafo'),
        ),
        body: ParagraphSizeExample(),
      ),
    );
  }
}

class ParagraphSizeExample extends StatelessWidget {
  final String text = 'Este é um exemplo de parágrafo que precisamos medir.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Largura do parágrafo: ${_getParagraphWidth(text, TextStyle(fontSize: 20))} pixels',
          ),
          Text(
            'Altura do parágrafo: ${_getParagraphHeight(text, TextStyle(fontSize: 20), MediaQuery.of(context).size.width - 40)} pixels',
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookPage()),
              );
              //BookPage
            },
            child: Container(
              height: _getParagraphHeight(text, TextStyle(fontSize: 20),
                  MediaQuery.of(context).size.width - 40),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }

  double _getParagraphWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size.width;
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
