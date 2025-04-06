import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_details_items_model.dart';
export 'order_details_items_model.dart';

class OrderDetailsItemsWidget extends StatefulWidget {
  const OrderDetailsItemsWidget({
    super.key,
    this.icon,
    this.title,
    this.details,
    bool? isEditable,
  }) : this.isEditable = isEditable ?? false;

  final Widget? icon;
  final String? title;
  final String? details;
  final bool isEditable;

  @override
  State<OrderDetailsItemsWidget> createState() =>
      _OrderDetailsItemsWidgetState();
}

class _OrderDetailsItemsWidgetState extends State<OrderDetailsItemsWidget> {
  late OrderDetailsItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailsItemsModel());

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
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    widget.icon!,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '${widget.title} :',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Nunito Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Text(
                          '£ ${widget.details}',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: 'Nunito Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                if (widget.isEditable)
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).greyG75,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 10.0, 14.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                'Edit',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            indent: 64.0,
            color: FlutterFlowTheme.of(context).greyG75,
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
