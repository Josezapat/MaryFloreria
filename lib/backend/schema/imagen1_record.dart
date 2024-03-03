import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Imagen1Record extends FirestoreRecord {
  Imagen1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Imagen1');

  static Stream<Imagen1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Imagen1Record.fromSnapshot(s));

  static Future<Imagen1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Imagen1Record.fromSnapshot(s));

  static Imagen1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Imagen1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Imagen1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Imagen1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Imagen1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Imagen1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagen1RecordData({
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class Imagen1RecordDocumentEquality implements Equality<Imagen1Record> {
  const Imagen1RecordDocumentEquality();

  @override
  bool equals(Imagen1Record? e1, Imagen1Record? e2) {
    return e1?.imagen == e2?.imagen;
  }

  @override
  int hash(Imagen1Record? e) => const ListEquality().hash([e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is Imagen1Record;
}
