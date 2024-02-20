import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id_Cliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  bool hasIdCliente() => _idCliente != null;

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

  void _initializeFields() {
    _idCliente = castToType<int>(snapshotData['Id_Cliente']);
    _nombre = snapshotData['Nombre'] as String?;
    _apellido1 = snapshotData['Apellido1'] as String?;
    _apellido2 = snapshotData['Apellido2'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  int? idCliente,
  String? nombre,
  String? apellido1,
  String? apellido2,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Cliente': idCliente,
      'Nombre': nombre,
      'Apellido1': apellido1,
      'Apellido2': apellido2,
      'Telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    return e1?.idCliente == e2?.idCliente &&
        e1?.nombre == e2?.nombre &&
        e1?.apellido1 == e2?.apellido1 &&
        e1?.apellido2 == e2?.apellido2 &&
        e1?.telefono == e2?.telefono;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality()
      .hash([e?.idCliente, e?.nombre, e?.apellido1, e?.apellido2, e?.telefono]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
