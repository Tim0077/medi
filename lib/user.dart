import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  // 1U
  String name;
  String email;
  String phone;
  String password;
  bool isDoctor;
  bool isPatient;

  // 2
  late DocumentReference reference;
  // 3
  User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      reference,
      required this.isDoctor
      ,required this.isPatient});
  // 4
  factory User.fromJson(Map<dynamic, dynamic> json) => _UserFromJson(json);
  // 5
  Map<String, dynamic> toJson() => _UserToJson(this);
  @override
  String toString() => "User<$User>";
}

//1
User _UserFromJson(Map<dynamic, dynamic> json) {
  return User(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      isDoctor: json['isDoctor'] as bool,
      isPatient: json['isPatient'] as bool);
}

//2
Map<String, dynamic> _UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password
      
    };
