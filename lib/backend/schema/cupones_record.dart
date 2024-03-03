import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponesRecord extends FirestoreRecord {
  CuponesRecord._(
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
      FirebaseFirestore.instance.collection('Cupones');

  static Stream<CuponesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponesRecord.fromSnapshot(s));

  static Future<CuponesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponesRecord.fromSnapshot(s));

  static CuponesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CuponesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponesRecordData({
  String? cupones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cupones': cupones,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponesRecordDocumentEquality implements Equality<CuponesRecord> {
  const CuponesRecordDocumentEquality();

  @override
  bool equals(CuponesRecord? e1, CuponesRecord? e2) {
    return e1?.cupones == e2?.cupones;
  }

  @override
  int hash(CuponesRecord? e) => const ListEquality().hash([e?.cupones]);

  @override
  bool isValidKey(Object? o) => o is CuponesRecord;
}
