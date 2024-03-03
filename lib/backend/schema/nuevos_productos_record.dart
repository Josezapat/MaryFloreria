import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NuevosProductosRecord extends FirestoreRecord {
  NuevosProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "create_at" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "modified_At" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _createAt = snapshotData['create_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_At'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NuevosProductos');

  static Stream<NuevosProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NuevosProductosRecord.fromSnapshot(s));

  static Future<NuevosProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NuevosProductosRecord.fromSnapshot(s));

  static NuevosProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NuevosProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NuevosProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NuevosProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NuevosProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NuevosProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNuevosProductosRecordData({
  String? name,
  String? description,
  double? price,
  String? image,
  int? stock,
  bool? onSale,
  double? salePrice,
  DateTime? createAt,
  DateTime? modifiedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'stock': stock,
      'on_sale': onSale,
      'sale_price': salePrice,
      'create_at': createAt,
      'modified_At': modifiedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class NuevosProductosRecordDocumentEquality
    implements Equality<NuevosProductosRecord> {
  const NuevosProductosRecordDocumentEquality();

  @override
  bool equals(NuevosProductosRecord? e1, NuevosProductosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.stock == e2?.stock &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.createAt == e2?.createAt &&
        e1?.modifiedAt == e2?.modifiedAt;
  }

  @override
  int hash(NuevosProductosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.image,
        e?.stock,
        e?.onSale,
        e?.salePrice,
        e?.createAt,
        e?.modifiedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is NuevosProductosRecord;
}
