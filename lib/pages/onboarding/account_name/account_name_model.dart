import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_name_widget.dart' show AccountNameWidget;
import 'package:flutter/material.dart';

class AccountNameModel extends FlutterFlowModel<AccountNameWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  // State field(s) for SurnameTextField widget.
  FocusNode? surnameTextFieldFocusNode;
  TextEditingController? surnameTextFieldTextController;
  String? Function(BuildContext, String?)?
      surnameTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    surnameTextFieldFocusNode?.dispose();
    surnameTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
