import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'create_job_profile_widget.dart' show CreateJobProfileWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateJobProfileModel extends FlutterFlowModel<CreateJobProfileWidget> {
  ///  Local state fields for this page.

  bool? isEmailverified = false;

  bool? isNumberVerified = false;

  String? otpValue;

  bool? isOTPSend = false;

  DocumentReference? resume;

  DocumentReference? docRef;

  List<DocumentReference> educationRef = [];
  void addToEducationRef(DocumentReference item) => educationRef.add(item);
  void removeFromEducationRef(DocumentReference item) =>
      educationRef.remove(item);
  void removeAtIndexFromEducationRef(int index) => educationRef.removeAt(index);
  void insertAtIndexInEducationRef(int index, DocumentReference item) =>
      educationRef.insert(index, item);
  void updateEducationRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      educationRef[index] = updateFn(educationRef[index]);

  List<DocumentReference> experienceRef = [];
  void addToExperienceRef(DocumentReference item) => experienceRef.add(item);
  void removeFromExperienceRef(DocumentReference item) =>
      experienceRef.remove(item);
  void removeAtIndexFromExperienceRef(int index) =>
      experienceRef.removeAt(index);
  void insertAtIndexInExperienceRef(int index, DocumentReference item) =>
      experienceRef.insert(index, item);
  void updateExperienceRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      experienceRef[index] = updateFn(experienceRef[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ContactPhoneNumber widget.
  FocusNode? contactPhoneNumberFocusNode;
  TextEditingController? contactPhoneNumberController;
  String? Function(BuildContext, String?)?
      contactPhoneNumberControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for ContactMail widget.
  FocusNode? contactMailFocusNode;
  TextEditingController? contactMailController;
  String? Function(BuildContext, String?)? contactMailControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    contactPhoneNumberFocusNode?.dispose();
    contactPhoneNumberController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    contactMailFocusNode?.dispose();
    contactMailController?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
