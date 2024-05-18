class HistoryBookModal {
  String? type;
  String? body;
  int? size;
  String? color;
  num? width;
  num? height;

  HistoryBookModal(
      {this.type, this.body, this.size, this.color, this.width, this.height});

  HistoryBookModal.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    body = json['body'];
    size = json['size'];
    color = json['color'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['body'] = this.body;
    data['size'] = this.size;
    data['color'] = this.color;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
