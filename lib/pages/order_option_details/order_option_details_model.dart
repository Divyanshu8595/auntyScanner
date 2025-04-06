import '/componnents/header_icon_plus/header_icon_plus_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_option_details_widget.dart' show OrderOptionDetailsWidget;
import 'package:flutter/material.dart';

class OrderOptionDetailsModel
    extends FlutterFlowModel<OrderOptionDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderIconPlus component.
  late HeaderIconPlusModel headerIconPlusModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue6;
  // State field(s) for SpecialInstructionTextField widget.
  FocusNode? specialInstructionTextFieldFocusNode1;
  TextEditingController? specialInstructionTextFieldTextController1;
  String? Function(BuildContext, String?)?
      specialInstructionTextFieldTextController1Validator;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue10;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue11;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue12;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue13;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue14;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue15;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue16;
  // State field(s) for SpecialInstructionTextField widget.
  FocusNode? specialInstructionTextFieldFocusNode2;
  TextEditingController? specialInstructionTextFieldTextController2;
  String? Function(BuildContext, String?)?
      specialInstructionTextFieldTextController2Validator;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue17;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue18;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue19;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue20;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue21;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue22;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue23;
  // State field(s) for SpecialInstructionTextField widget.
  FocusNode? specialInstructionTextFieldFocusNode3;
  TextEditingController? specialInstructionTextFieldTextController3;
  String? Function(BuildContext, String?)?
      specialInstructionTextFieldTextController3Validator;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue24;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerIconPlusModel = createModel(context, () => HeaderIconPlusModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerIconPlusModel.dispose();
    tabBarController?.dispose();
    specialInstructionTextFieldFocusNode1?.dispose();
    specialInstructionTextFieldTextController1?.dispose();

    specialInstructionTextFieldFocusNode2?.dispose();
    specialInstructionTextFieldTextController2?.dispose();

    specialInstructionTextFieldFocusNode3?.dispose();
    specialInstructionTextFieldTextController3?.dispose();

    navigatorModel.dispose();
  }
}
