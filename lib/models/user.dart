import 'dart:convert';

import 'package:flutter_vue/models/base_model.dart';

class User extends BaseModel {
  final String userName;
  final String email;
  final int age;

  User(
    this.userName,
    this.email,
    this.age,
  );

  User copyWith({
    String? userName,
    String? email,
    int? age,
  }) {
    return User(
      userName ?? this.userName,
      email ?? this.email,
      age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'email': email,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      map['userName'] ?? '',
      map['email'] ?? '',
      map['age']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(userName: $userName, email: $email, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userName == userName &&
        other.email == email &&
        other.age == age;
  }

  @override
  int get hashCode => userName.hashCode ^ email.hashCode ^ age.hashCode;
}
