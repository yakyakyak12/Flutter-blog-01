import 'package:intl/intl.dart';

class User {
  final int id;
  final String username;
  final String email;
  final DateTime created;
  final DateTime updated;
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.created,
    required this.updated,
  });

  // 1. Dart 객체를 통신하기 위한 Map 형태로 변환
  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "created": created,
        "updated": updated,
      };

  // 2. Map 형태로 받아서 Dart 객채로 변환
  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]),
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);
}
