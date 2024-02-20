import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "cedula" field.
  int? _cedula;
  int get cedula => _cedula ?? 0;
  bool hasCedula() => _cedula != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  bool hasRol() => _rol != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  bool hasContrasena() => _contrasena != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _cedula = castToType<int>(snapshotData['cedula']);
    _rol = snapshotData['rol'] as String?;
    _contrasena = snapshotData['contrasena'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  DateTime? createdTime,
  int? cedula,
  String? rol,
  String? contrasena,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'cedula': cedula,
      'rol': rol,
      'contrasena': contrasena,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.cedula == e2?.cedula &&
        e1?.rol == e2?.rol &&
        e1?.contrasena == e2?.contrasena &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.cedula,
        e?.rol,
        e?.contrasena,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
