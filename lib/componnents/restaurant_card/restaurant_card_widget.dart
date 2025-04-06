import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'restaurant_card_model.dart';
export 'restaurant_card_model.dart';

class RestaurantCardWidget extends StatefulWidget {
  const RestaurantCardWidget({
    super.key,
    this.labelText,
    double? rate,
  }) : this.rate = rate ?? 0.0;

  final String? labelText;
  final double rate;

  @override
  State<RestaurantCardWidget> createState() => _RestaurantCardWidgetState();
}

class _RestaurantCardWidgetState extends State<RestaurantCardWidget> {
  late RestaurantCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestaurantCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            alignment: AlignmentDirectional(1.0, -1.0),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 500),
                  fadeOutDuration: Duration(milliseconds: 500),
                  imageUrl:
                      'https://www.livehindustan.com/lh-img/uploadimage/library/2023/03/10/16_9/16_9_6/aloo_paratha__1678412602.jpg',
                  width: double.infinity,
                  height: 155.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (widget.labelText != null &&
                            widget.labelText != '')
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(100.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(100.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 8.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.labelText!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 14.0, 0.0),
                      child: ToggleIcon(
                        onPressed: () async {
                          safeSetState(() => _model.liked = !_model.liked);
                        },
                        value: _model.liked,
                        onIcon: Icon(
                          FFIcons.kheart,
                          color: FlutterFlowTheme.of(context).error,
                          size: 24.0,
                        ),
                        offIcon: Icon(
                          FFIcons.kheart,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Aloo ke Parathe',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Nunito Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            'Sponsored',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).inkLight,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          width: 3.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Icon(
                          FFIcons.kfoodEgg,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 14.0,
                        ),
                        Container(
                          width: 3.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '₹30 Delivery Fee',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).inkLight,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Container(
                          width: 3.0,
                          height: 3.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '25-45 min',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context).inkLight,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).greyG200,
                  shape: BoxShape.circle,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        valueOrDefault<String>(
                          widget.rate.toString(),
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
