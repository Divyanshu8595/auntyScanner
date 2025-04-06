import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'find_near_food_widget.dart' show FindNearFoodWidget;
import 'package:flutter/material.dart';

class FindNearFoodModel extends FlutterFlowModel<FindNearFoodWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for SeachAddressTextField widget.
  FocusNode? seachAddressTextFieldFocusNode;
  TextEditingController? seachAddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      seachAddressTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    seachAddressTextFieldFocusNode?.dispose();
    seachAddressTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
