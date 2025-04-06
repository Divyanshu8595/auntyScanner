import '/componnents/nav_bar_item/nav_bar_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_widget.dart' show NavBarWidget;
import 'package:flutter/material.dart';

class NavBarModel extends FlutterFlowModel<NavBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavBarItem component.
  late NavBarItemModel navBarItemModel1;
  // Model for NavBarItem component.
  late NavBarItemModel navBarItemModel2;
  // Model for NavBarItem component.
  late NavBarItemModel navBarItemModel3;
  // Model for NavBarItem component.
  late NavBarItemModel navBarItemModel4;

  @override
  void initState(BuildContext context) {
    navBarItemModel1 = createModel(context, () => NavBarItemModel());
    navBarItemModel2 = createModel(context, () => NavBarItemModel());
    navBarItemModel3 = createModel(context, () => NavBarItemModel());
    navBarItemModel4 = createModel(context, () => NavBarItemModel());
  }

  @override
  void dispose() {
    navBarItemModel1.dispose();
    navBarItemModel2.dispose();
    navBarItemModel3.dispose();
    navBarItemModel4.dispose();
  }
}
