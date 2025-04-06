import '/backend/schema/structs/index.dart';
import '/componnents/header/header_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_credit_card_widget.dart' show AddCreditCardWidget;
import 'package:flutter/material.dart';

class AddCreditCardModel extends FlutterFlowModel<AddCreditCardWidget> {
  ///  Local state fields for this page.

  CountryStruct? selectedCountry;
  void updateSelectedCountryStruct(Function(CountryStruct) updateFn) {
    updateFn(selectedCountry ??= CountryStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for CardNumberTextField widget.
  FocusNode? cardNumberTextFieldFocusNode;
  TextEditingController? cardNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      cardNumberTextFieldTextControllerValidator;
  String? _cardNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Invalid or unsupported card number';
    }

    return null;
  }

  // State field(s) for ExpDateTextField widget.
  FocusNode? expDateTextFieldFocusNode;
  TextEditingController? expDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      expDateTextFieldTextControllerValidator;
  String? _expDateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Card expired';
    }

    return null;
  }

  // State field(s) for CVVTextField widget.
  FocusNode? cVVTextFieldFocusNode;
  TextEditingController? cVVTextFieldTextController;
  String? Function(BuildContext, String?)? cVVTextFieldTextControllerValidator;
  String? _cVVTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Code too short';
    }

    return null;
  }

  // State field(s) for PostcodeTextField widget.
  FocusNode? postcodeTextFieldFocusNode;
  TextEditingController? postcodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      postcodeTextFieldTextControllerValidator;
  String? _postcodeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a valid postal code';
    }

    return null;
  }

  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardNumberTextFieldTextControllerValidator =
        _cardNumberTextFieldTextControllerValidator;
    expDateTextFieldTextControllerValidator =
        _expDateTextFieldTextControllerValidator;
    cVVTextFieldTextControllerValidator = _cVVTextFieldTextControllerValidator;
    postcodeTextFieldTextControllerValidator =
        _postcodeTextFieldTextControllerValidator;
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardNumberTextFieldFocusNode?.dispose();
    cardNumberTextFieldTextController?.dispose();

    expDateTextFieldFocusNode?.dispose();
    expDateTextFieldTextController?.dispose();

    cVVTextFieldFocusNode?.dispose();
    cVVTextFieldTextController?.dispose();

    postcodeTextFieldFocusNode?.dispose();
    postcodeTextFieldTextController?.dispose();

    navigatorModel.dispose();
  }
}
