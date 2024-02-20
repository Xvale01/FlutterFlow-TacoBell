import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SucursalRecord extends FirestoreRecord {
  SucursalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "Ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
    _ubicacion = snapshotData['Ubicacion'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Sucursal')
          : FirebaseFirestore.instance.collectionGroup('Sucursal');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Sucursal').doc(id);

  static Stream<SucursalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SucursalRecord.fromSnapshot(s));

  static Future<SucursalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SucursalRecord.fromSnapshot(s));

  static SucursalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SucursalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SucursalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SucursalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SucursalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SucursalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSucursalRecordData({
  String? nombre,
  String? telefono,
  String? ubicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Telefono': telefono,
      'Ubicacion': ubicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class SucursalRecordDocumentEquality implements Equality<SucursalRecord> {
  const SucursalRecordDocumentEquality();

  @override
  bool equals(SucursalRecord? e1, SucursalRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.telefono == e2?.telefono &&
        e1?.ubicacion == e2?.ubicacion;
  }

  @override
  int hash(SucursalRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.telefono, e?.ubicacion]);

  @override
  bool isValidKey(Object? o) => o is SucursalRecord;
}
