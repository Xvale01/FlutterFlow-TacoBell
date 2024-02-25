import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsRecord extends FirestoreRecord {
  TicketsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id_Ticket" field.
  int? _idTicket;
  int get idTicket => _idTicket ?? 0;
  bool hasIdTicket() => _idTicket != null;

  // "Prioridad" field.
  String? _prioridad;
  String get prioridad => _prioridad ?? '';
  bool hasPrioridad() => _prioridad != null;

  // "Id_Cliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  bool hasIdCliente() => _idCliente != null;

  // "Id_Estado" field.
  int? _idEstado;
  int get idEstado => _idEstado ?? 0;
  bool hasIdEstado() => _idEstado != null;

  // "Fecha_Creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Id_Tecnico" field.
  String? _idTecnico;
  String get idTecnico => _idTecnico ?? '';
  bool hasIdTecnico() => _idTecnico != null;

  void _initializeFields() {
    _idTicket = castToType<int>(snapshotData['Id_Ticket']);
    _prioridad = snapshotData['Prioridad'] as String?;
    _idCliente = castToType<int>(snapshotData['Id_Cliente']);
    _idEstado = castToType<int>(snapshotData['Id_Estado']);
    _fechaCreacion = snapshotData['Fecha_Creacion'] as DateTime?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _idTecnico = snapshotData['Id_Tecnico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tickets');

  static Stream<TicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsRecord.fromSnapshot(s));

  static Future<TicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketsRecord.fromSnapshot(s));

  static TicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsRecordData({
  int? idTicket,
  String? prioridad,
  int? idCliente,
  int? idEstado,
  DateTime? fechaCreacion,
  String? descripcion,
  String? idTecnico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Ticket': idTicket,
      'Prioridad': prioridad,
      'Id_Cliente': idCliente,
      'Id_Estado': idEstado,
      'Fecha_Creacion': fechaCreacion,
      'Descripcion': descripcion,
      'Id_Tecnico': idTecnico,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsRecordDocumentEquality implements Equality<TicketsRecord> {
  const TicketsRecordDocumentEquality();

  @override
  bool equals(TicketsRecord? e1, TicketsRecord? e2) {
    return e1?.idTicket == e2?.idTicket &&
        e1?.prioridad == e2?.prioridad &&
        e1?.idCliente == e2?.idCliente &&
        e1?.idEstado == e2?.idEstado &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.descripcion == e2?.descripcion &&
        e1?.idTecnico == e2?.idTecnico;
  }

  @override
  int hash(TicketsRecord? e) => const ListEquality().hash([
        e?.idTicket,
        e?.prioridad,
        e?.idCliente,
        e?.idEstado,
        e?.fechaCreacion,
        e?.descripcion,
        e?.idTecnico
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsRecord;
}
