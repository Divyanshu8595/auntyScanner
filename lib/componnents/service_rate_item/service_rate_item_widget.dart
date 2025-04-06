import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'service_rate_item_model.dart';
export 'service_rate_item_model.dart';

class ServiceRateItemWidget extends StatefulWidget {
  const ServiceRateItemWidget({
    super.key,
    this.text,
    this.action,
    this.activeItem,
    this.color,
  });

  final String? text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;
  final Color? color;

  @override
  State<ServiceRateItemWidget> createState() => _ServiceRateItemWidgetState();
}

class _ServiceRateItemWidgetState extends State<ServiceRateItemWidget> {
  late ServiceRateItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceRateItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.action?.call(
          widget.text,
        );
      },
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: widget.text == widget.activeItem ? 84.0 : 68.0,
                height: widget.text == widget.activeItem ? 84.0 : 68.0,
                decoration: BoxDecoration(
                  color: widget.color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    widget.text!,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Nunito Sans',
                          color: valueOrDefault<Color>(
                            widget.text == widget.activeItem
                                ? FlutterFlowTheme.of(context).primaryText
                                : FlutterFlowTheme.of(context).greyG400,
                            FlutterFlowTheme.of(context).primaryText,
                          ),
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 5.0)),
        ),
      ),
    );
  }
}
