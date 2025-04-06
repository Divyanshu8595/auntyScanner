import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_email_widget.dart' show UpdateEmailWidget;
import 'package:flutter/material.dart';

class UpdateEmailModel extends FlutterFlowModel<UpdateEmailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for EmailaddressTextField widget.
  FocusNode? emailaddressTextFieldFocusNode;
  TextEditingController? emailaddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailaddressTextFieldTextControllerValidator;
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
    emailaddressTextFieldFocusNode?.dispose();
    emailaddressTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
