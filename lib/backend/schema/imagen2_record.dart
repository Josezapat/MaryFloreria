import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Imagen2Record extends FirestoreRecord {
  Imagen2Record._(
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
      FirebaseFirestore.instance.collection('Imagen2');

  static Stream<Imagen2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Imagen2Record.fromSnapshot(s));

  static Future<Imagen2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Imagen2Record.fromSnapshot(s));

  static Imagen2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Imagen2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Imagen2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Imagen2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Imagen2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Imagen2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagen2RecordData({
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class Imagen2RecordDocumentEquality implements Equality<Imagen2Record> {
  const Imagen2RecordDocumentEquality();

  @override
  bool equals(Imagen2Record? e1, Imagen2Record? e2) {
    return e1?.imagen == e2?.imagen;
  }

  @override
  int hash(Imagen2Record? e) => const ListEquality().hash([e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is Imagen2Record;
}
