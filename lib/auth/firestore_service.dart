import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserName(String userId, String userName) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('personalInfo')
          .doc('details') // Use a fixed doc ID for personalInfo, like 'details'
          .set({'name': userName});
    } catch (e) {
      // Handle any errors that occur during the save
      print("Error saving username: $e");
    }
  }
}
