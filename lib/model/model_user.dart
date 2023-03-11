import 'dart:math';

class UserModel {
  String? userId, email, name, pic;
  UserModel({this.userId, this.name, this.email, this.pic});
  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    } else {
      userId = map['userId'];
      email = map['email'];
      name = map['name'];
      pic = map['userId'];
    }
  }
  toJson() async {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'pic': pic,
    };
  }
}
