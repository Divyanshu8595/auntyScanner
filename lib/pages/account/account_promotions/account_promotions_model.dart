import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_promotions_widget.dart' show AccountPromotionsWidget;
import 'package:flutter/material.dart';

class AccountPromotionsModel extends FlutterFlowModel<AccountPromotionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for EnterpromocodeTextField widget.
  FocusNode? enterpromocodeTextFieldFocusNode;
  TextEditingController? enterpromocodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      enterpromocodeTextFieldTextControllerValidator;
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
    enterpromocodeTextFieldFocusNode?.dispose();
    enterpromocodeTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
