import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'browse_widget.dart' show BrowseWidget;
import 'package:flutter/material.dart';

class BrowseModel extends FlutterFlowModel<BrowseWidget> {
  ///  Local state fields for this page.

  String currentPage = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldTextController;
  String? Function(BuildContext, String?)?
      searchTextFieldTextControllerValidator;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    searchTextFieldFocusNode?.dispose();
    searchTextFieldTextController?.dispose();

    navBarModel.dispose();
    navigatorModel.dispose();
  }
}
