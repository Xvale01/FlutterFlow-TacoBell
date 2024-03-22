import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiquetesRecord extends FirestoreRecord {
  TiquetesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id_Tiquete" field.
  int? _idTiquete;
  int get idTiquete => _idTiquete ?? 0;
  bool hasIdTiquete() => _idTiquete != null;

  // "Sucursal" field.
  String? _sucursal;
  String get sucursal => _sucursal ?? '';
  bool hasSucursal() => _sucursal != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "Estado_Tiquete" field.
  String? _estadoTiquete;
  String get estadoTiquete => _estadoTiquete ?? '';
  bool hasEstadoTiquete() => _estadoTiquete != null;

  void _initializeFields() {
    _idTiquete = castToType<int>(snapshotData['Id_Tiquete']);
    _sucursal = snapshotData['Sucursal'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fecha = snapshotData['Fecha'] as String?;
    _estadoTiquete = snapshotData['Estado_Tiquete'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tiquetes');

  static Stream<TiquetesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiquetesRecord.fromSnapshot(s));

  static Future<TiquetesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiquetesRecord.fromSnapshot(s));

  static TiquetesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TiquetesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiquetesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiquetesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiquetesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiquetesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiquetesRecordData({
  int? idTiquete,
  String? sucursal,
  String? descripcion,
  String? fecha,
  String? estadoTiquete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Tiquete': idTiquete,
      'Sucursal': sucursal,
      'Descripcion': descripcion,
      'Fecha': fecha,
      'Estado_Tiquete': estadoTiquete,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiquetesRecordDocumentEquality implements Equality<TiquetesRecord> {
  const TiquetesRecordDocumentEquality();

  @override
  bool equals(TiquetesRecord? e1, TiquetesRecord? e2) {
    return e1?.idTiquete == e2?.idTiquete &&
        e1?.sucursal == e2?.sucursal &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.estadoTiquete == e2?.estadoTiquete;
  }

  @override
  int hash(TiquetesRecord? e) => const ListEquality().hash(
      [e?.idTiquete, e?.sucursal, e?.descripcion, e?.fecha, e?.estadoTiquete]);

  @override
  bool isValidKey(Object? o) => o is TiquetesRecord;
}
