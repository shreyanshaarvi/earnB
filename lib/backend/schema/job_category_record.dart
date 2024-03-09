import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobCategoryRecord extends FirestoreRecord {
  JobCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "no_of_click" field.
  double? _noOfClick;
  double get noOfClick => _noOfClick ?? 0.0;
  bool hasNoOfClick() => _noOfClick != null;

  void _initializeFields() {
    _categoryName = snapshotData['categoryName'] as String?;
    _noOfClick = castToType<double>(snapshotData['no_of_click']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_category');

  static Stream<JobCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobCategoryRecord.fromSnapshot(s));

  static Future<JobCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobCategoryRecord.fromSnapshot(s));

  static JobCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobCategoryRecordData({
  String? categoryName,
  double? noOfClick,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoryName': categoryName,
      'no_of_click': noOfClick,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobCategoryRecordDocumentEquality implements Equality<JobCategoryRecord> {
  const JobCategoryRecordDocumentEquality();

  @override
  bool equals(JobCategoryRecord? e1, JobCategoryRecord? e2) {
    return e1?.categoryName == e2?.categoryName &&
        e1?.noOfClick == e2?.noOfClick;
  }

  @override
  int hash(JobCategoryRecord? e) =>
      const ListEquality().hash([e?.categoryName, e?.noOfClick]);

  @override
  bool isValidKey(Object? o) => o is JobCategoryRecord;
}
