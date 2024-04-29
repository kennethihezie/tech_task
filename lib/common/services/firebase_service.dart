import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final databaseReference = FirebaseDatabase.instance.ref();

  Future<DataSnapshot> readAllData(String dataNode) async {
    final snapshot = await databaseReference.child('data').get();
    return snapshot;
  }
}
