import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String profilePhoto;
  String email;
  String uid;
  String gender;
  var dateOfBirth;
  List eventPosts;
  int activeEventCount;
  int joinedEventCount;

  User({
    required this.name,
    required this.profilePhoto,
    required this.email,
    required this.uid,
    required this.gender,
    required this.dateOfBirth,
    required this.eventPosts,
    required this.activeEventCount,
    required this.joinedEventCount,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "profilePhoto": profilePhoto,
        "email": email,
        "uid": uid,
        "gender": gender,
        "dateOfBirth": dateOfBirth,
        "eventPosts": eventPosts,
        "activeEventCount": activeEventCount,
        "joinedEventCount": joinedEventCount,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      name: snapshot["name"],
      email: snapshot["email"],
      profilePhoto: snapshot["profilePhoto"],
      uid: snapshot["uid"],
      gender: snapshot["gender"],
      dateOfBirth: snapshot["dateOfBirth"],
      eventPosts: snapshot["eventPosts"],
      activeEventCount: snapshot["activeEventCount"],
      joinedEventCount: snapshot["joinedEventCount"],
    );
  }
}
