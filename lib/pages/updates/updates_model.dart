import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'updates_widget.dart' show UpdatesWidget;
import 'package:flutter/material.dart';

class UpdatesModel extends FlutterFlowModel<UpdatesWidget> {
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
