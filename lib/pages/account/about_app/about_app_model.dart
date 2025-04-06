import '/componnents/divider/divider_widget.dart';
import '/componnents/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_app_widget.dart' show AboutAppWidget;
import 'package:flutter/material.dart';

class AboutAppModel extends FlutterFlowModel<AboutAppWidget> {
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

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    dividerModel1.dispose();
    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
  }
}
