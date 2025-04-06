import '/componnents/divider/divider_widget.dart';
import '/componnents/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_details_widget.dart' show AccountDetailsWidget;
import 'package:flutter/material.dart';

class AccountDetailsModel extends FlutterFlowModel<AccountDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Divider component.
  late DividerModel dividerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dividerModel = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    dividerModel.dispose();
  }
}
