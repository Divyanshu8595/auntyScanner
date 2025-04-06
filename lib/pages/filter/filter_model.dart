import '/componnents/divider/divider_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/price_range/price_range_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  Local state fields for this page.

  String selected = 'Delivery';

  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // Model for PriceRange component.
  late PriceRangeModel priceRangeModel1;
  // Model for PriceRange component.
  late PriceRangeModel priceRangeModel2;
  // Model for PriceRange component.
  late PriceRangeModel priceRangeModel3;
  // Model for PriceRange component.
  late PriceRangeModel priceRangeModel4;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue6;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // Model for Divider component.
  late DividerModel dividerModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    priceRangeModel1 = createModel(context, () => PriceRangeModel());
    priceRangeModel2 = createModel(context, () => PriceRangeModel());
    priceRangeModel3 = createModel(context, () => PriceRangeModel());
    priceRangeModel4 = createModel(context, () => PriceRangeModel());
    dividerModel = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    priceRangeModel1.dispose();
    priceRangeModel2.dispose();
    priceRangeModel3.dispose();
    priceRangeModel4.dispose();
    dividerModel.dispose();
    navigatorModel.dispose();
  }
}
