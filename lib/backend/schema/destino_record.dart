import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DestinoRecord extends FirestoreRecord {
  DestinoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  void _initializeFields() {
    _ciudad = snapshotData['Ciudad'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Destino');

  static Stream<DestinoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DestinoRecord.fromSnapshot(s));

  static Future<DestinoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DestinoRecord.fromSnapshot(s));

  static DestinoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinoRecordData({
  String? ciudad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Ciudad': ciudad,
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinoRecordDocumentEquality implements Equality<DestinoRecord> {
  const DestinoRecordDocumentEquality();

  @override
  bool equals(DestinoRecord? e1, DestinoRecord? e2) {
    return e1?.ciudad == e2?.ciudad;
  }

  @override
  int hash(DestinoRecord? e) => const ListEquality().hash([e?.ciudad]);

  @override
  bool isValidKey(Object? o) => o is DestinoRecord;
}
