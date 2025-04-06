import '/componnents/divider/divider_widget.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_address_widget.dart' show AddAddressWidget;
import 'package:flutter/material.dart';

class AddAddressModel extends FlutterFlowModel<AddAddressWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for BusinessorbuildingnameTextField widget.
  FocusNode? businessorbuildingnameTextFieldFocusNode;
  TextEditingController? businessorbuildingnameTextFieldTextController;
  String? Function(BuildContext, String?)?
      businessorbuildingnameTextFieldTextControllerValidator;
  // State field(s) for FlatorhousenumberTextField widget.
  FocusNode? flatorhousenumberTextFieldFocusNode;
  TextEditingController? flatorhousenumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      flatorhousenumberTextFieldTextControllerValidator;
  // State field(s) for StreetaddressTextField widget.
  FocusNode? streetaddressTextFieldFocusNode;
  TextEditingController? streetaddressTextFieldTextController;
  String? Function(BuildContext, String?)?
      streetaddressTextFieldTextControllerValidator;
  // State field(s) for PostcodeTextField widget.
  FocusNode? postcodeTextFieldFocusNode;
  TextEditingController? postcodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      postcodeTextFieldTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for AddinstructionsTextField widget.
  FocusNode? addinstructionsTextFieldFocusNode;
  TextEditingController? addinstructionsTextFieldTextController;
  String? Function(BuildContext, String?)?
      addinstructionsTextFieldTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // State field(s) for AddressLabelTextField widget.
  FocusNode? addressLabelTextFieldFocusNode;
  TextEditingController? addressLabelTextFieldTextController;
  String? Function(BuildContext, String?)?
      addressLabelTextFieldTextControllerValidator;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dividerModel1 = createModel(context, () => DividerModel());
    dividerModel2 = createModel(context, () => DividerModel());
    dividerModel3 = createModel(context, () => DividerModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    businessorbuildingnameTextFieldFocusNode?.dispose();
    businessorbuildingnameTextFieldTextController?.dispose();

    flatorhousenumberTextFieldFocusNode?.dispose();
    flatorhousenumberTextFieldTextController?.dispose();

    streetaddressTextFieldFocusNode?.dispose();
    streetaddressTextFieldTextController?.dispose();

    postcodeTextFieldFocusNode?.dispose();
    postcodeTextFieldTextController?.dispose();

    dividerModel1.dispose();
    addinstructionsTextFieldFocusNode?.dispose();
    addinstructionsTextFieldTextController?.dispose();

    dividerModel2.dispose();
    addressLabelTextFieldFocusNode?.dispose();
    addressLabelTextFieldTextController?.dispose();

    dividerModel3.dispose();
    navigatorModel.dispose();
  }
}
