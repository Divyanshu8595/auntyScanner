import '/componnents/empty_card/empty_card_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'basket_your_orders_widget.dart' show BasketYourOrdersWidget;
import 'package:flutter/material.dart';

class BasketYourOrdersModel extends FlutterFlowModel<BasketYourOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for EmptyCard component.
  late EmptyCardModel emptyCardModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    emptyCardModel = createModel(context, () => EmptyCardModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    emptyCardModel.dispose();
    navigatorModel.dispose();
  }
}
