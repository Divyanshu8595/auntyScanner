import '/componnents/empty_card/empty_card_widget.dart';
import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'baskets_widget.dart' show BasketsWidget;
import 'package:flutter/material.dart';

class BasketsModel extends FlutterFlowModel<BasketsWidget> {
  ///  Local state fields for this page.

  String currentPage = 'All';

  ///  State fields for stateful widgets in this page.

  // Model for EmptyCard component.
  late EmptyCardModel emptyCardModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    emptyCardModel = createModel(context, () => EmptyCardModel());
    navBarModel = createModel(context, () => NavBarModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    emptyCardModel.dispose();
    navBarModel.dispose();
    navigatorModel.dispose();
  }
}
