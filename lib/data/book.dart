import 'package:flutter_application_1/modal/history_book_modal.dart';

var bookJson = [
  {
    "type": "input",
    "body": "A grande boca do sapo",
    "size": 25,
    "color": "#000",
    "width": null,
    "height": null
  },
  {
    "type": "input",
    "body": [
      "Era uma vez um sapo que estava que estava a beira de um rio, quando de repente…",
      "Veio para perto dele, uma borboleta.",
      "E disse:"
    ],
    "size": 14,
    "color": "#fff",
    "width": null,
    "height": null
  },
  {
    "type": "play",
    "body": "",
    "size": null,
    "color": "#fff",
    "width": 30,
    "height": 30
  },
  {
    "type": "image",
    "body": "https://picsum.photos/id/1/200/300",
    "size": 0,
    "color": "#fff",
    "width": 100,
    "height": 50
  },
  {
    "type": "input",
    "body": [
      "– Sapo, você tem a boca muito grande!",
      "E o sapo respondeu para borboleta:",
      "Não, a minha boca é pequena.",
      "Mas a borboleta não contente falou para ele:",
      "– Boca pequena tem a minhoca.",
      "Aí veio a minhoca dizendo :",
      "– Sapo você tem a boca muito grande…"
    ],
    "size": 14,
    "color": "#fff",
    "width": null,
    "height": null
  },
  {
    "type": "input",
    "body": [
      "E o sapo muito bravo respondeu:",
      "Não, eu tenho a boca pequena;",
      "Mas a minhoca, para deixar o sapo mais bravo ainda disse:",
      "– Boca pequena tem a abelha..",
      "Chegou voando então a abelha dizendo:",
      "– Sapo, você tem a boca muito grande…",
      "E o sapo respondeu para ela em tom de deboche:",
      "Nãooo, eu tenho a boca pequenininha..",
      "A abelha para deixar o sapo mais nervoso disse:",
      "– Boca pequena tem a mosca.."
    ],
    "size": 14,
    "color": "#fff",
    "width": null,
    "height": null
  },
  {
    "type": "play",
    "body": "",
    "size": null,
    "color": "#fff",
    "width": 30,
    "height": 30
  },
  {
    "type": "input",
    "body": [
      "Então chegou voando a mosca trazendo um bolo cheinho de velinhas..",
      "Falando para todos:",
      "– Esse bolo será de quem conseguir apagar todas as velinhas de uma só vez…",
      "E o sapo então muito esperto falou:",
      "– Ora, Ora, eu vou ser o dono desse bolo, porque eu tenho a boca grande e uma força….",
      "Foi então que o sapo soprou, soprou, soprou bem forte conseguindo apagar todas as velinhas daquele belo bolo."
    ],
    "size": 14,
    "color": "#000",
    "width": null,
    "height": null
  },
  {
    "type": "image",
    "body": "https://picsum.photos/id/1/200/300",
    "size": 0,
    "color": null,
    "width": 100,
    "height": 50
  },
  {
    "type": "input",
    "body": [
      "A Borboleta disse encantada:",
      "– Boca pequena, hein?",
      "Foi então que o sapo realmente percebeu como era grande a sua força e a sua boca.",
      "E o sapo tornou-se grande amigo de todos e foram brincar à beira de um rio.",
      "O Sapo aprendeu que cada um de nós somos de um jeito, e mesmo com as diferenças podemos ser todos iguais…"
    ],
    "size": 14,
    "color": "#000",
    "width": null,
    "height": null
  }
];

class DataBook {
  getBook() {
    List<HistoryBookModal> list = [];
    for (var i = 0; i < bookJson.length; i++) {
      list.add(HistoryBookModal.fromJson(bookJson[i]));
    }
    return list;
  }

  final List<String> text = [
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
  ];
}
