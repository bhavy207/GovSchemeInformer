import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../modal/scheme_modal.dart';
import 'auth_helper.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static final FireStoreHelper fireStoreHelper = FireStoreHelper._();
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  String userCollection = "User";
  String schemesCollection = "Schemes";

  // --- Scheme Management Methods ---
  
  Future<void> addScheme({required SchemeModal scheme}) async {
    try {
      await fireStore.collection(schemesCollection).add(scheme.toJson());
      log("Scheme added successfully");
    } catch (e) {
      log("Error adding scheme: $e");
      rethrow;
    }
  }

  Stream<List<SchemeModal>> getSchemesStream() {
    return fireStore.collection(schemesCollection).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
         return SchemeModal.fromJson(doc.data(), docId: doc.id);
      }).toList();
    });
  }

  Future<void> updateScheme({required String docId, required SchemeModal scheme}) async {
    try {
      await fireStore.collection(schemesCollection).doc(docId).update(scheme.toJson());
      log("Scheme updated successfully");
    } catch (e) {
      log("Error updating scheme: $e");
      rethrow;
    }
  }

  Future<void> deleteScheme({required String docId}) async {
    try {
      await fireStore.collection(schemesCollection).doc(docId).delete();
      log("Scheme deleted successfully");
    } catch (e) {
      log("Error deleting scheme: $e");
      rethrow;
    }
  }

  // ---------------------------------

  Stream<QuerySnapshot<Map<String, dynamic>>> getChats(
      {required String senderId, required String receiverId}) {
    return fireStore
        .collection(userCollection)
        .doc(senderId)
        .collection(receiverId)
        .snapshots();
  }

  Future<void> setUserData({required User user}) async {
    UserModel userModel = UserModel(
      uid: user.uid,
      userName: user.displayName ?? "NULL",
      email: user.email as String,
      profilepic: user.photoURL ??
          "https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg",
    );

    await fireStore
        .collection(userCollection)
        .doc(user.uid)
        .update(userModel.toMap())
        .then((value) {
      log("Data insert Successfully");
    });
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> getContactList(
      {required String uid}) {
    return fireStore.collection(userCollection).doc(uid).snapshots();
  }

  Future<List> getContactData({required String uid}) async {
    DocumentSnapshot<Map<String, dynamic>>? snaps =
        await fireStore.collection(userCollection).doc(uid).get();

    Map data = snaps.data() as Map;

    return data['contact'] ?? [];
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getUserData() {
    return fireStore.collection(userCollection).snapshots();
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserById(
      {required String uid}) {
    return fireStore.collection(userCollection).doc(uid).snapshots();
  }

  Future<void> addContact(
      {required String sender, required String receiver}) async {
    List contacts = await getContactData(uid: sender);

    if (!contacts.contains(receiver)) {
      contacts.add(receiver);
      fireStore
          .collection(userCollection)
          .doc(sender)
          .update({'contact': contacts});
    }
    contacts = await getContactData(uid: receiver);

    if (!contacts.contains(sender)) {
      contacts.add(sender);
      fireStore
          .collection(userCollection)
          .doc(receiver)
          .update({'contact': contacts});
    }
  }
}
