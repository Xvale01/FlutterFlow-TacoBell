import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PuestoRecord extends FirestoreRecord {
  PuestoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _descripcion = snapshotData['Descripcion'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Puesto')
          : FirebaseFirestore.instance.collectionGroup('Puesto');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Puesto').doc(id);

  static Stream<PuestoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuestoRecord.fromSnapshot(s));

  static Future<PuestoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuestoRecord.fromSnapshot(s));

  static PuestoRecord fromSnapshot(DocumentSnapshot snapshot) => PuestoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuestoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuestoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuestoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuestoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuestoRecordData({
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class PuestoRecordDocumentEquality implements Equality<PuestoRecord> {
  const PuestoRecordDocumentEquality();

  @override
  bool equals(PuestoRecord? e1, PuestoRecord? e2) {
    return e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(PuestoRecord? e) => const ListEquality().hash([e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is PuestoRecord;
}
