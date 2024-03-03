import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ocasiones_widget.dart' show OcasionesWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OcasionesModel extends FlutterFlowModel<OcasionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController3;

  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  String? get choiceChipsValue4 =>
      choiceChipsValueController4?.value?.firstOrNull;
  set choiceChipsValue4(String? val) =>
      choiceChipsValueController4?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController4;

  int get pageViewCurrentIndex4 => pageViewController4 != null &&
          pageViewController4!.hasClients &&
          pageViewController4!.page != null
      ? pageViewController4!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  String? get choiceChipsValue5 =>
      choiceChipsValueController5?.value?.firstOrNull;
  set choiceChipsValue5(String? val) =>
      choiceChipsValueController5?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController5;

  int get pageViewCurrentIndex5 => pageViewController5 != null &&
          pageViewController5!.hasClients &&
          pageViewController5!.page != null
      ? pageViewController5!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController6;
  String? get choiceChipsValue6 =>
      choiceChipsValueController6?.value?.firstOrNull;
  set choiceChipsValue6(String? val) =>
      choiceChipsValueController6?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController6;

  int get pageViewCurrentIndex6 => pageViewController6 != null &&
          pageViewController6!.hasClients &&
          pageViewController6!.page != null
      ? pageViewController6!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController7;
  String? get choiceChipsValue7 =>
      choiceChipsValueController7?.value?.firstOrNull;
  set choiceChipsValue7(String? val) =>
      choiceChipsValueController7?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController7;

  int get pageViewCurrentIndex7 => pageViewController7 != null &&
          pageViewController7!.hasClients &&
          pageViewController7!.page != null
      ? pageViewController7!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController8;
  String? get choiceChipsValue8 =>
      choiceChipsValueController8?.value?.firstOrNull;
  set choiceChipsValue8(String? val) =>
      choiceChipsValueController8?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController8;

  int get pageViewCurrentIndex8 => pageViewController8 != null &&
          pageViewController8!.hasClients &&
          pageViewController8!.page != null
      ? pageViewController8!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController9;
  String? get choiceChipsValue9 =>
      choiceChipsValueController9?.value?.firstOrNull;
  set choiceChipsValue9(String? val) =>
      choiceChipsValueController9?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController9;

  int get pageViewCurrentIndex9 => pageViewController9 != null &&
          pageViewController9!.hasClients &&
          pageViewController9!.page != null
      ? pageViewController9!.page!.round()
      : 0;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController10;
  String? get choiceChipsValue10 =>
      choiceChipsValueController10?.value?.firstOrNull;
  set choiceChipsValue10(String? val) =>
      choiceChipsValueController10?.value = val != null ? [val] : [];
  // State field(s) for PageView widget.
  PageController? pageViewController10;

  int get pageViewCurrentIndex10 => pageViewController10 != null &&
          pageViewController10!.hasClients &&
          pageViewController10!.page != null
      ? pageViewController10!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
