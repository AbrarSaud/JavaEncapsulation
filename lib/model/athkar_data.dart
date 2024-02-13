

class AthkarData {
  String? text;
  String? description;
  int? count;
  List<String>? categories;

  AthkarData({this.text, this.description, this.count, this.categories});

  AthkarData.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    description = json['description'];
    count = json['count'];
    categories = json['categories'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['description'] = this.description;
    data['count'] = this.count;
    data['categories'] = this.categories;
    return data;
  }
}