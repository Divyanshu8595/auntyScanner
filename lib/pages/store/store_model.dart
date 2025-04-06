import '/componnents/divider/divider_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'store_widget.dart' show StoreWidget;
import 'package:flutter/material.dart';

class StoreModel extends FlutterFlowModel<StoreWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for Divider component.
  late DividerModel dividerModel4;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    dividerModel1.dispose();
    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
    navigatorModel.dispose();
  }
}
