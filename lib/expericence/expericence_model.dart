import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'expericence_widget.dart' show ExpericenceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpericenceModel extends FlutterFlowModel<ExpericenceWidget> {
  ///  Local state fields for this page.

  DateTime? endDate;

  DateTime? stratDate;

  String? salaryslip;

  String? compnayIDCard;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for cname widget.
  FocusNode? cnameFocusNode;
  TextEditingController? cnameController;
  String? Function(BuildContext, String?)? cnameControllerValidator;
  // State field(s) for Pname widget.
  FocusNode? pnameFocusNode;
  TextEditingController? pnameController;
  String? Function(BuildContext, String?)? pnameControllerValidator;
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

  // State field(s) for CAddress widget.
  FocusNode? cAddressFocusNode;
  TextEditingController? cAddressController;
  String? Function(BuildContext, String?)? cAddressControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    cnameFocusNode?.dispose();
    cnameController?.dispose();

    pnameFocusNode?.dispose();
    pnameController?.dispose();

    cAddressFocusNode?.dispose();
    cAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
