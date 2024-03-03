import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Imagen3Record extends FirestoreRecord {
  Imagen3Record._(
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
      FirebaseFirestore.instance.collection('Imagen3');

  static Stream<Imagen3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Imagen3Record.fromSnapshot(s));

  static Future<Imagen3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Imagen3Record.fromSnapshot(s));

  static Imagen3Record fromSnapshot(DocumentSnapshot snapshot) =>
      Imagen3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Imagen3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Imagen3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Imagen3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Imagen3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagen3RecordData({
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class Imagen3RecordDocumentEquality implements Equality<Imagen3Record> {
  const Imagen3RecordDocumentEquality();

  @override
  bool equals(Imagen3Record? e1, Imagen3Record? e2) {
    return e1?.imagen == e2?.imagen;
  }

  @override
  int hash(Imagen3Record? e) => const ListEquality().hash([e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is Imagen3Record;
}
