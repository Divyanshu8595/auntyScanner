import '/backend/schema/structs/index.dart';
import '/componnents/chat_items/chat_items_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/componnents/store_info4_modal/store_info4_modal_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'message_model.dart';
export 'message_model.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({super.key});

  static String routeName = 'Message';
  static String routePath = '/message';

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  late MessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageModel());

    _model.chatTextFieldTextController ??= TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional(1.0, -1.0),
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  FFIcons.kx,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                              Text(
                                'Divyanshu',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: Icon(
                                  FFIcons.kcallDefault,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: StoreInfo4ModalWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.chatItemsModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: ChatItemsWidget(
                                        chatText:
                                            'Can you message when you’re here please, as i can’t always hear the door?',
                                        status: 'Delivered',
                                        senderIsCurrentUser: true,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.chatItemsModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: ChatItemsWidget(
                                        chatText:
                                            'Can you message when you’re here please, as i can’t always hear the door?',
                                        status: 'Sending',
                                        senderIsCurrentUser: false,
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final chatsPageState =
                                          _model.chats.toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: chatsPageState.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 16.0),
                                        itemBuilder:
                                            (context, chatsPageStateIndex) {
                                          final chatsPageStateItem =
                                              chatsPageState[
                                                  chatsPageStateIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: ChatItemsWidget(
                                              key: Key(
                                                  'Keybfh_${chatsPageStateIndex}_of_${chatsPageState.length}'),
                                              chatText: chatsPageStateItem.text,
                                              status: 'Sending',
                                              senderIsCurrentUser: false,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ]
                                    .divide(SizedBox(height: 16.0))
                                    .addToStart(SizedBox(height: 30.0))
                                    .addToEnd(SizedBox(height: 24.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData('Are you here?'),
                                        ChipData('I\'m waiting outside'),
                                        ChipData(
                                            'Can you message when you’re \nhere please?')
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.choiceChipsValue =
                                              val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Nunito Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        iconSize: 18.0,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 8.0, 0.0, 8.0),
                                        elevation: 3.0,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Nunito Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 8.0, 0.0, 8.0),
                                        elevation: 3.0,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      chipSpacing: 10.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: false,
                                    ),
                                  ),
                                ].addToStart(SizedBox(width: 24.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Autocomplete<String>(
                                initialValue: TextEditingValue(),
                                optionsBuilder: (textEditingValue) {
                                  if (textEditingValue.text == '') {
                                    return const Iterable<String>.empty();
                                  }
                                  return ['Option 1'].where((option) {
                                    final lowercaseOption =
                                        option.toLowerCase();
                                    return lowercaseOption.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                },
                                optionsViewBuilder:
                                    (context, onSelected, options) {
                                  return AutocompleteOptionsList(
                                    textFieldKey: _model.chatTextFieldKey,
                                    textController:
                                        _model.chatTextFieldTextController!,
                                    options: options.toList(),
                                    onSelected: onSelected,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          letterSpacing: 0.0,
                                        ),
                                    textHighlightStyle: TextStyle(),
                                    elevation: 4.0,
                                    optionBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    optionHighlightColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    maxHeight: 200.0,
                                  );
                                },
                                onSelected: (String selection) {
                                  safeSetState(() => _model
                                      .chatTextFieldSelectedOption = selection);
                                  FocusScope.of(context).unfocus();
                                },
                                fieldViewBuilder: (
                                  context,
                                  textEditingController,
                                  focusNode,
                                  onEditingComplete,
                                ) {
                                  _model.chatTextFieldFocusNode = focusNode;

                                  _model.chatTextFieldTextController =
                                      textEditingController;
                                  return TextFormField(
                                    key: _model.chatTextFieldKey,
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    onEditingComplete: onEditingComplete,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.chatTextFieldTextController',
                                      Duration(milliseconds: 500),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          _model.choiceChipsValue != null &&
                                                  _model.choiceChipsValue != ''
                                              ? _model.choiceChipsValue
                                              : ' ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG75,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    validator: _model
                                        .chatTextFieldTextControllerValidator
                                        .asValidator(context),
                                  );
                                },
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              disabledColor:
                                  FlutterFlowTheme.of(context).cellSeperator,
                              disabledIconColor:
                                  FlutterFlowTheme.of(context).greyG400,
                              icon: Icon(
                                FFIcons.ksend,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                              onPressed: (_model.chatTextFieldTextController.text ==
                                          '')
                                  ? null
                                  : () async {
                                      _model.addToChats(MessageStruct(
                                        text: _model
                                            .chatTextFieldTextController.text,
                                        date: getCurrentTimestamp,
                                        createBy: UserStruct(),
                                      ));
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.chatTextFieldTextController
                                            ?.clear();
                                      });
                                    },
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ].addToEnd(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 8.0, 0.0),
                  child: wrapWithModel(
                    model: _model.navigatorModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavigatorWidget(
                      expanded: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
