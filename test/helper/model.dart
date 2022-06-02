import 'dart:convert';

List<Model> modelFromJson(String str) => List<Model>.from(
      (json.decode(str) as List<dynamic>).map<dynamic>(
        (dynamic x) => Model.fromJson(x as Map<String, dynamic>),
      ),
    );

String modelToJson(List<Model> data) => json.encode(
      List<dynamic>.from(data.map<dynamic>((x) => x.toJson())),
    );

class Model {
  Model({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  @override
  String toString() {
    return title;
  }

  final int userId;
  final int id;
  final String title;
  final String body;
}
