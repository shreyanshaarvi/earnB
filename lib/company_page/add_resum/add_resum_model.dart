import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_resum_widget.dart' show AddResumWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddResumModel extends FlutterFlowModel<AddResumWidget> {
  ///  Local state fields for this page.

  List<String> skill = [];
  void addToSkill(String item) => skill.add(item);
  void removeFromSkill(String item) => skill.remove(item);
  void removeAtIndexFromSkill(int index) => skill.removeAt(index);
  void insertAtIndexInSkill(int index, String item) =>
      skill.insert(index, item);
  void updateSkillAtIndex(int index, Function(String) updateFn) =>
      skill[index] = updateFn(skill[index]);

  List<String> language = [];
  void addToLanguage(String item) => language.add(item);
  void removeFromLanguage(String item) => language.remove(item);
  void removeAtIndexFromLanguage(int index) => language.removeAt(index);
  void insertAtIndexInLanguage(int index, String item) =>
      language.insert(index, item);
  void updateLanguageAtIndex(int index, Function(String) updateFn) =>
      language[index] = updateFn(language[index]);

  List<String> prlangauge = [];
  void addToPrlangauge(String item) => prlangauge.add(item);
  void removeFromPrlangauge(String item) => prlangauge.remove(item);
  void removeAtIndexFromPrlangauge(int index) => prlangauge.removeAt(index);
  void insertAtIndexInPrlangauge(int index, String item) =>
      prlangauge.insert(index, item);
  void updatePrlangaugeAtIndex(int index, Function(String) updateFn) =>
      prlangauge[index] = updateFn(prlangauge[index]);

  List<String> hobbies = [];
  void addToHobbies(String item) => hobbies.add(item);
  void removeFromHobbies(String item) => hobbies.remove(item);
  void removeAtIndexFromHobbies(int index) => hobbies.removeAt(index);
  void insertAtIndexInHobbies(int index, String item) =>
      hobbies.insert(index, item);
  void updateHobbiesAtIndex(int index, Function(String) updateFn) =>
      hobbies[index] = updateFn(hobbies[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
