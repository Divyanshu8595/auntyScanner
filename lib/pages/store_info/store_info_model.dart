import '/componnents/navigator/navigator_widget.dart';
import '/componnents/picked_itedm/picked_itedm_widget.dart';
import '/componnents/select_choice/select_choice_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'store_info_widget.dart' show StoreInfoWidget;
import 'package:flutter/material.dart';

class StoreInfoModel extends FlutterFlowModel<StoreInfoWidget> {
  ///  Local state fields for this page.

  String selected = 'Delivery';

  ///  State fields for stateful widgets in this page.

  // Model for SelectChoice component.
  late SelectChoiceModel selectChoiceModel1;
  // Model for SelectChoice component.
  late SelectChoiceModel selectChoiceModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel1;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel2;
  // Model for PickedItedm component.
  late PickedItedmModel pickedItedmModel3;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    selectChoiceModel1 = createModel(context, () => SelectChoiceModel());
    selectChoiceModel2 = createModel(context, () => SelectChoiceModel());
    pickedItedmModel1 = createModel(context, () => PickedItedmModel());
    pickedItedmModel2 = createModel(context, () => PickedItedmModel());
    pickedItedmModel3 = createModel(context, () => PickedItedmModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    selectChoiceModel1.dispose();
    selectChoiceModel2.dispose();
    pickedItedmModel1.dispose();
    pickedItedmModel2.dispose();
    pickedItedmModel3.dispose();
    navigatorModel.dispose();
  }
}
