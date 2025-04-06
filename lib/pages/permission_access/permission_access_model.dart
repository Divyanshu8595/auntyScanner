import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'permission_access_widget.dart' show PermissionAccessWidget;
import 'package:flutter/material.dart';

class PermissionAccessModel extends FlutterFlowModel<PermissionAccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    navigatorModel.dispose();
  }
}
