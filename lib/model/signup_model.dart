import 'package:cloud_firestore/cloud_firestore.dart';

class UserSignup {
  final String address;
  final String city;
  final String name;
  final int phNum;
  String id;

  UserSignup(
      {required this.address,
      required this.city,
      required this.name,
      required this.phNum,
      this.id = ''});

  Map<String, dynamic> toJson() => {
        'address': address,
        'city': city,
        'name': name,
        'phNum': phNum,
        'id': id
      };

  static UserSignup fromJson(Map<String, dynamic> json) => UserSignup(
      address: json['address'],
      city: json['city'],
      name: json['name'],
      phNum: json['phNum']);
}

// Stream<List<UserSignup>> readUsers() => FirebaseFirestore.instance
//     .collection('users')
//     .snapshots()
//     .map((snapshot) => snapshot.docs.map((doc) => UserSignup.fromJson(doc.data()).toList()));
