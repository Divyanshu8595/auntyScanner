import '/componnents/divider/divider_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'accept_terms_model.dart';
export 'accept_terms_model.dart';

class AcceptTermsWidget extends StatefulWidget {
  const AcceptTermsWidget({super.key});

  static String routeName = 'AcceptTerms';
  static String routePath = '/acceptTerms';

  @override
  State<AcceptTermsWidget> createState() => _AcceptTermsWidgetState();
}

class _AcceptTermsWidgetState extends State<AcceptTermsWidget> {
  late AcceptTermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcceptTermsModel());

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
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/huber-eats-consumer-app-38yn7u/assets/1yoiptace4c3/Screenshot_2024-02-26_at_10.19.33.png',
                                      width: 77.0,
                                      height: 77.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Accept Huber’s Terms & Review Privacy Notice',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            fontSize: 28.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 14.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'By selecting ‘I Agree’ below, I have reviewed and agree to the ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Nunito Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'Terms of Use ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Nunito Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                            mouseCursor:
                                                SystemMouseCursors.click,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                await launchURL('#');
                                              },
                                          ),
                                          TextSpan(
                                            text: 'and acknowledge the ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Nunito Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'Privacy Notice. ',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Nunito Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                            mouseCursor:
                                                SystemMouseCursors.click,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                await launchURL('#');
                                              },
                                          ),
                                          TextSpan(
                                            text:
                                                'I am at least 18 years of age.  ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Nunito Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 27.0)),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.dividerModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DividerWidget(
                                      hasText: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).inkLight,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.checkboxListTileValue = newValue!);
                                },
                                title: Text(
                                  'I agree',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).secondary,
                                checkColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).greyG200,
                                  icon: Icon(
                                    FFIcons.karrowLeft,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                FFButtonWidget(
                                  onPressed:
                                      (_model.checkboxListTileValue == false)
                                          ? null
                                          : () async {
                                              context.pushNamed(
                                                  UpdatesWidget.routeName);
                                            },
                                  text: 'Next',
                                  icon: Icon(
                                    FFIcons.karrowRight,
                                    color: _model.checkboxListTileValue == null
                                        ? FlutterFlowTheme.of(context)
                                            .inkLighter
                                        : FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    size: 24.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 55.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 16.0, 10.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                    disabledColor:
                                        FlutterFlowTheme.of(context).greyG200,
                                    disabledTextColor:
                                        FlutterFlowTheme.of(context).inkLighter,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]
                        .addToStart(SizedBox(height: 20.0))
                        .addToEnd(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
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
