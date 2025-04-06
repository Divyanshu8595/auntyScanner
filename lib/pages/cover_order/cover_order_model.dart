import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/pick_how_to_pay/pick_how_to_pay_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cover_order_widget.dart' show CoverOrderWidget;
import 'package:flutter/material.dart';

class CoverOrderModel extends FlutterFlowModel<CoverOrderWidget> {
  ///  Local state fields for this page.

  String? selected = '';

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for PickHowToPay component.
  late PickHowToPayModel pickHowToPayModel1;
  // State field(s) for AmountTextField widget.
  FocusNode? amountTextFieldFocusNode;
  TextEditingController? amountTextFieldTextController;
  String? Function(BuildContext, String?)?
      amountTextFieldTextControllerValidator;
  // Model for PickHowToPay component.
  late PickHowToPayModel pickHowToPayModel2;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    pickHowToPayModel1 = createModel(context, () => PickHowToPayModel());
    pickHowToPayModel2 = createModel(context, () => PickHowToPayModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    pickHowToPayModel1.dispose();
    amountTextFieldFocusNode?.dispose();
    amountTextFieldTextController?.dispose();

    pickHowToPayModel2.dispose();
    navigatorModel.dispose();
  }
}
