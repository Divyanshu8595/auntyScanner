import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'delivery_items_model.dart';
export 'delivery_items_model.dart';

class DeliveryItemsWidget extends StatefulWidget {
  const DeliveryItemsWidget({
    super.key,
    String? text,
    this.action,
    required this.activeItem,
    bool? showBadge,
  })  : this.text = text ?? 'TITLE',
        this.showBadge = showBadge ?? false;

  final String text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;
  final bool showBadge;

  @override
  State<DeliveryItemsWidget> createState() => _DeliveryItemsWidgetState();
}

class _DeliveryItemsWidgetState extends State<DeliveryItemsWidget> {
  late DeliveryItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryItemsModel());

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
        decoration: BoxDecoration(
          color: widget.text == widget.activeItem
              ? FlutterFlowTheme.of(context).secondary
              : FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 8.0, 14.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.text,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Nunito Sans',
                          color: widget.text == widget.activeItem
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            if (widget.showBadge && (widget.text == widget.activeItem))
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
