import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_first_name_widget.dart' show UpdateFirstNameWidget;
import 'package:flutter/material.dart';

class UpdateFirstNameModel extends FlutterFlowModel<UpdateFirstNameWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
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
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
