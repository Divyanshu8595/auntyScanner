import '/componnents/divider/divider_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_terms_widget.dart' show UpdateTermsWidget;
import 'package:flutter/material.dart';

class UpdateTermsModel extends FlutterFlowModel<UpdateTermsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Divider component.
  late DividerModel dividerModel;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    dividerModel = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    dividerModel.dispose();
    navigatorModel.dispose();
  }
}
