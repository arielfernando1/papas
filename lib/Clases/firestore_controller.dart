import 'dart:developer';

import 'package:agroaquivr1/Clases/papas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  Future<List<Papas>> listall() async {
    final firebaseFirestore = FirebaseFirestore.instance;
    final querySnap = await firebaseFirestore.collection('papas').get();
    final papas = <Papas>[];
    for (final doc in querySnap.docs) {
      final papa = Papas.fromJson(doc.data());
      papas.add(papa);
    }
    log(papas.length.toString());
    return papas;
  }
}
