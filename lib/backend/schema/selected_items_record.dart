import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemsRecord extends FirestoreRecord {
  SelectedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "SKU" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _name = snapshotData['name'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _cart = snapshotData['cart'] as DocumentReference?;
    _item = snapshotData['item'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _sku = snapshotData['SKU'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedItemsRecord.fromSnapshot(s));

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedItemsRecord.fromSnapshot(s));

  static SelectedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedItemsRecordData({
  double? price,
  String? image,
  String? description,
  double? subtotal,
  String? name,
  DocumentReference? creator,
  DocumentReference? cart,
  DocumentReference? item,
  int? cantidad,
  String? sku,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'image': image,
      'description': description,
      'subtotal': subtotal,
      'name': name,
      'creator': creator,
      'cart': cart,
      'item': item,
      'cantidad': cantidad,
      'SKU': sku,
    }.withoutNulls,
  );

  return firestoreData;
}

class SelectedItemsRecordDocumentEquality
    implements Equality<SelectedItemsRecord> {
  const SelectedItemsRecordDocumentEquality();

  @override
  bool equals(SelectedItemsRecord? e1, SelectedItemsRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.subtotal == e2?.subtotal &&
        e1?.name == e2?.name &&
        e1?.creator == e2?.creator &&
        e1?.cart == e2?.cart &&
        e1?.item == e2?.item &&
        e1?.cantidad == e2?.cantidad &&
        e1?.sku == e2?.sku;
  }

  @override
  int hash(SelectedItemsRecord? e) => const ListEquality().hash([
        e?.price,
        e?.image,
        e?.description,
        e?.subtotal,
        e?.name,
        e?.creator,
        e?.cart,
        e?.item,
        e?.cantidad,
        e?.sku
      ]);

  @override
  bool isValidKey(Object? o) => o is SelectedItemsRecord;
}
