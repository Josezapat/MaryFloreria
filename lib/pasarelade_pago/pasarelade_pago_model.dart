import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pasarelade_pago_widget.dart' show PasareladePagoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasareladePagoModel extends FlutterFlowModel<PasareladePagoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameController3;
  String? Function(BuildContext, String?)? yourNameController3Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for Ciudad widget.
  String? ciudadValue1;
  FormFieldController<String>? ciudadValueController1;
  // State field(s) for Ciudad widget.
  String? ciudadValue2;
  FormFieldController<String>? ciudadValueController2;
  // State field(s) for nombreenvio widget.
  FocusNode? nombreenvioFocusNode;
  TextEditingController? nombreenvioController;
  String? Function(BuildContext, String?)? nombreenvioControllerValidator;
  // State field(s) for numeroenvio widget.
  FocusNode? numeroenvioFocusNode;
  TextEditingController? numeroenvioController;
  String? Function(BuildContext, String?)? numeroenvioControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameController4;
  String? Function(BuildContext, String?)? yourNameController4Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode5;
  TextEditingController? yourNameController5;
  String? Function(BuildContext, String?)? yourNameController5Validator;
  // State field(s) for Dedicatoria widget.
  FocusNode? dedicatoriaFocusNode;
  TextEditingController? dedicatoriaController;
  String? Function(BuildContext, String?)? dedicatoriaControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for horario widget.
  String? horarioValue;
  FormFieldController<String>? horarioValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode6;
  TextEditingController? yourNameController6;
  String? Function(BuildContext, String?)? yourNameController6Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrderRecord? orden;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameController3?.dispose();

    nombreenvioFocusNode?.dispose();
    nombreenvioController?.dispose();

    numeroenvioFocusNode?.dispose();
    numeroenvioController?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameController4?.dispose();

    yourNameFocusNode5?.dispose();
    yourNameController5?.dispose();

    dedicatoriaFocusNode?.dispose();
    dedicatoriaController?.dispose();

    yourNameFocusNode6?.dispose();
    yourNameController6?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
