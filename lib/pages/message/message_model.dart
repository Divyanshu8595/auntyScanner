import '/backend/schema/structs/index.dart';
import '/componnents/chat_items/chat_items_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'message_widget.dart' show MessageWidget;
import 'package:flutter/material.dart';

class MessageModel extends FlutterFlowModel<MessageWidget> {
  ///  Local state fields for this page.

  List<MessageStruct> chats = [];
  void addToChats(MessageStruct item) => chats.add(item);
  void removeFromChats(MessageStruct item) => chats.remove(item);
  void removeAtIndexFromChats(int index) => chats.removeAt(index);
  void insertAtIndexInChats(int index, MessageStruct item) =>
      chats.insert(index, item);
  void updateChatsAtIndex(int index, Function(MessageStruct) updateFn) =>
      chats[index] = updateFn(chats[index]);

  ///  State fields for stateful widgets in this page.

  // Model for ChatItems component.
  late ChatItemsModel chatItemsModel1;
  // Model for ChatItems component.
  late ChatItemsModel chatItemsModel2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ChatTextField widget.
  final chatTextFieldKey = GlobalKey();
  FocusNode? chatTextFieldFocusNode;
  TextEditingController? chatTextFieldTextController;
  String? chatTextFieldSelectedOption;
  String? Function(BuildContext, String?)? chatTextFieldTextControllerValidator;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    chatItemsModel1 = createModel(context, () => ChatItemsModel());
    chatItemsModel2 = createModel(context, () => ChatItemsModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    chatItemsModel1.dispose();
    chatItemsModel2.dispose();
    chatTextFieldFocusNode?.dispose();

    navigatorModel.dispose();
  }
}
