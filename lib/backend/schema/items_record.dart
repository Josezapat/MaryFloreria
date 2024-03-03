import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
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

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "ListaCategorias" field.
  List<String>? _listaCategorias;
  List<String> get listaCategorias => _listaCategorias ?? const [];
  bool hasListaCategorias() => _listaCategorias != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _stock = castToType<int>(snapshotData['stock']);
    _onSale = snapshotData['on_sale'] as bool?;
    _images = getDataList(snapshotData['images']);
    _listaCategorias = getDataList(snapshotData['ListaCategorias']);
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  static ItemsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ItemsRecord.getDocumentFromData(
        {
          'name': snapshot.data['name'],
          'description': snapshot.data['description'],
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.double,
            false,
          ),
          'image': snapshot.data['image'],
          'stock': convertAlgoliaParam(
            snapshot.data['stock'],
            ParamType.int,
            false,
          ),
          'on_sale': snapshot.data['on_sale'],
          'images': safeGet(
            () => snapshot.data['images'].toList(),
          ),
          'ListaCategorias': safeGet(
            () => snapshot.data['ListaCategorias'].toList(),
          ),
          'fecha': convertAlgoliaParam(
            snapshot.data['fecha'],
            ParamType.DateTime,
            false,
          ),
        },
        ItemsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ItemsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'items',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? description,
  double? price,
  String? image,
  int? stock,
  bool? onSale,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'stock': stock,
      'on_sale': onSale,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.stock == e2?.stock &&
        e1?.onSale == e2?.onSale &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.listaCategorias, e2?.listaCategorias) &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.image,
        e?.stock,
        e?.onSale,
        e?.images,
        e?.listaCategorias,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
