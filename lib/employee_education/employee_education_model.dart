import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'employee_education_widget.dart' show EmployeeEducationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmployeeEducationModel extends FlutterFlowModel<EmployeeEducationWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  String? cID = '';

  String? pCertificate = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Coll widget.
  FocusNode? collFocusNode;
  TextEditingController? collController;
  String? Function(BuildContext, String?)? collControllerValidator;
  // State field(s) for AssociatedDegree widget.
  FocusNode? associatedDegreeFocusNode;
  TextEditingController? associatedDegreeController;
  String? Function(BuildContext, String?)? associatedDegreeControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    collFocusNode?.dispose();
    collController?.dispose();

    associatedDegreeFocusNode?.dispose();
    associatedDegreeController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
