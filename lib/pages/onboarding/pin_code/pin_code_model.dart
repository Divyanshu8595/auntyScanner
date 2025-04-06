import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pin_code_widget.dart' show PinCodeWidget;
import 'package:flutter/material.dart';

class PinCodeModel extends FlutterFlowModel<PinCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    navigatorModel.dispose();
  }
}
