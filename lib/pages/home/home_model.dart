import '/componnents/delivery_items/delivery_items_widget.dart';
import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/order_item/order_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String selected = 'Delivery';

  ///  State fields for stateful widgets in this page.

  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel1;
  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel2;
  // Model for DeliveryItems component.
  late DeliveryItemsModel deliveryItemsModel3;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel2;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    deliveryItemsModel1 = createModel(context, () => DeliveryItemsModel());
    deliveryItemsModel2 = createModel(context, () => DeliveryItemsModel());
    deliveryItemsModel3 = createModel(context, () => DeliveryItemsModel());
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    navBarModel = createModel(context, () => NavBarModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    deliveryItemsModel1.dispose();
    deliveryItemsModel2.dispose();
    deliveryItemsModel3.dispose();
    orderItemModel1.dispose();
    orderItemModel2.dispose();
    navBarModel.dispose();
    navigatorModel.dispose();
  }
}
