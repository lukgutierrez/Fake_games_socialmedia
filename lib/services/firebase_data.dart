import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> addData(String data) async {
  await db.collection('Gmail').add({'email': data});
}

Future<void> addData2(String data) async {
  await db.collection('Password').add({'password': data});
}
