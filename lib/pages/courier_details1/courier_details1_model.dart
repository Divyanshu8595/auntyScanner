import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'courier_details1_widget.dart' show CourierDetails1Widget;
import 'package:flutter/material.dart';

class CourierDetails1Model extends FlutterFlowModel<CourierDetails1Widget> {
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
