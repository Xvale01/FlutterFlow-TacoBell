import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Apellido1" field.
  String? _apellido1;
  String get apellido1 => _apellido1 ?? '';
  bool hasApellido1() => _apellido1 != null;

  // "Apellido2" field.
  String? _apellido2;
  String get apellido2 => _apellido2 ?? '';
  bool hasApellido2() => _apellido2 != null;

  // "Telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "Rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _apellido1 = snapshotData['Apellido1'] as String?;
    _apellido2 = snapshotData['Apellido2'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
    _rol = snapshotData['Rol'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Usuario')
          : FirebaseFirestore.instance.collectionGroup('Usuario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Usuario').doc(id);

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? nombre,
  String? apellido1,
  String? apellido2,
  String? telefono,
  String? rol,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Apellido1': apellido1,
      'Apellido2': apellido2,
      'Telefono': telefono,
      'Rol': rol,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido1 == e2?.apellido1 &&
        e1?.apellido2 == e2?.apellido2 &&
        e1?.telefono == e2?.telefono &&
        e1?.rol == e2?.rol;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.apellido1, e?.apellido2, e?.telefono, e?.rol]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
