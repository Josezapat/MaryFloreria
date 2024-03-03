import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Cupon10Record extends FirestoreRecord {
  Cupon10Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Cupones" field.
  String? _cupones;
  String get cupones => _cupones ?? '';
  bool hasCupones() => _cupones != null;

  void _initializeFields() {
    _cupones = snapshotData['Cupones'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cupon10');

  static Stream<Cupon10Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Cupon10Record.fromSnapshot(s));

  static Future<Cupon10Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Cupon10Record.fromSnapshot(s));

  static Cupon10Record fromSnapshot(DocumentSnapshot snapshot) =>
      Cupon10Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Cupon10Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Cupon10Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Cupon10Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Cupon10Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCupon10RecordData({
  String? cupones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cupones': cupones,
    }.withoutNulls,
  );

  return firestoreData;
}

class Cupon10RecordDocumentEquality implements Equality<Cupon10Record> {
  const Cupon10RecordDocumentEquality();

  @override
  bool equals(Cupon10Record? e1, Cupon10Record? e2) {
    return e1?.cupones == e2?.cupones;
  }

  @override
  int hash(Cupon10Record? e) => const ListEquality().hash([e?.cupones]);

  @override
  bool isValidKey(Object? o) => o is Cupon10Record;
}
