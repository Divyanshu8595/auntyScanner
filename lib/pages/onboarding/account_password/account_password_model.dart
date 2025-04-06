import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_password_widget.dart' show AccountPasswordWidget;
import 'package:flutter/material.dart';

class AccountPasswordModel extends FlutterFlowModel<AccountPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
