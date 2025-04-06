import '/componnents/header_icon_plus/header_icon_plus_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'order_options_widget.dart' show OrderOptionsWidget;
import 'package:flutter/material.dart';

class OrderOptionsModel extends FlutterFlowModel<OrderOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderIconPlus component.
  late HeaderIconPlusModel headerIconPlusModel;
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
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // State field(s) for SpecialInstructionTextField widget.
  FocusNode? specialInstructionTextFieldFocusNode;
  TextEditingController? specialInstructionTextFieldTextController;
  String? Function(BuildContext, String?)?
      specialInstructionTextFieldTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue10;
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
    specialInstructionTextFieldFocusNode?.dispose();
    specialInstructionTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
