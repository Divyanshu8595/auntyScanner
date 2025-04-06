import '/componnents/empty_card/empty_card_widget.dart';
import '/componnents/nav_bar/nav_bar_widget.dart';
import '/componnents/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'baskets_model.dart';
export 'baskets_model.dart';

class BasketsWidget extends StatefulWidget {
  const BasketsWidget({super.key});

  static String routeName = 'Baskets';
  static String routePath = '/baskets';

  @override
  State<BasketsWidget> createState() => _BasketsWidgetState();
}

class _BasketsWidgetState extends State<BasketsWidget> {
  late BasketsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BasketsModel());

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
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            BasketYourOrdersWidget.routeName);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .greyG75,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 10.0, 14.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                FFIcons.kreceiptDefault,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                              Text(
                                                'Orders',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
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
                                  Flexible(
                                    child: Text(
                                      'Baskets',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            fontSize: 38.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.emptyCardModel,
                                    updateCallback: () => safeSetState(() {}),
                                    updateOnChange: true,
                                    child: EmptyCardWidget(
                                      photo:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/huber-eats-consumer-app-38yn7u/assets/bh9lkvi2krgy/Screenshot_2024-03-10_at_15.29.09.png',
                                      title: 'Add items to start a cart',
                                      description:
                                          'Once you add items from a restaurant or store, your cart will appear here',
                                      buttonText: 'Start shopping',
                                      action: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      wrapWithModel(
                        model: _model.navBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NavBarWidget(
                          activePage: 'Baskets',
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 16.0))
                        .addToStart(SizedBox(height: 24.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 68.0, 8.0, 0.0),
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
