import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'courier_details_widget.dart' show CourierDetailsWidget;
import 'package:flutter/material.dart';

class CourierDetailsModel extends FlutterFlowModel<CourierDetailsWidget> {
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
