import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiendaRecord extends FirestoreRecord {
  TiendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tiendas" field.
  String? _tiendas;
  String get tiendas => _tiendas ?? '';
  bool hasTiendas() => _tiendas != null;

  void _initializeFields() {
    _tiendas = snapshotData['Tiendas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tienda');

  static Stream<TiendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiendaRecord.fromSnapshot(s));

  static Future<TiendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiendaRecord.fromSnapshot(s));

  static TiendaRecord fromSnapshot(DocumentSnapshot snapshot) => TiendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiendaRecordData({
  String? tiendas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tiendas': tiendas,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiendaRecordDocumentEquality implements Equality<TiendaRecord> {
  const TiendaRecordDocumentEquality();

  @override
  bool equals(TiendaRecord? e1, TiendaRecord? e2) {
    return e1?.tiendas == e2?.tiendas;
  }

  @override
  int hash(TiendaRecord? e) => const ListEquality().hash([e?.tiendas]);

  @override
  bool isValidKey(Object? o) => o is TiendaRecord;
}
