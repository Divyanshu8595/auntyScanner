import '/componnents/divider/divider_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'store_info4_modal_widget.dart' show StoreInfo4ModalWidget;
import 'package:flutter/material.dart';

class StoreInfo4ModalModel extends FlutterFlowModel<StoreInfo4ModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for Divider component.
  late DividerModel dividerModel4;
  // Model for Divider component.
  late DividerModel dividerModel5;

  @override
  void initState(BuildContext context) {
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    dividerModel4 = createModel(context, () => DividerModel());
    dividerModel5 = createModel(context, () => DividerModel());
  }

  @override
  void dispose() {
    dividerModel1.dispose();
    dividerModel2.dispose();
    dividerModel3.dispose();
    dividerModel4.dispose();
    dividerModel5.dispose();
  }
}
