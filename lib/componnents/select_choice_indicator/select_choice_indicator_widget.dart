import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'select_choice_indicator_model.dart';
export 'select_choice_indicator_model.dart';

class SelectChoiceIndicatorWidget extends StatefulWidget {
  const SelectChoiceIndicatorWidget({
    super.key,
    String? text,
    this.action,
    required this.activeItem,
    this.timeFrom,
    this.timeTo,
  }) : this.text = text ?? 'TITLE';

  final String text;
  final Future Function(String? buttonName)? action;
  final String? activeItem;
  final String? timeFrom;
  final String? timeTo;

  @override
  State<SelectChoiceIndicatorWidget> createState() =>
      _SelectChoiceIndicatorWidgetState();
}

class _SelectChoiceIndicatorWidgetState
    extends State<SelectChoiceIndicatorWidget> {
  late SelectChoiceIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectChoiceIndicatorModel());

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
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    widget.text,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Nunito Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    widget.timeFrom!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito Sans',
                          color: FlutterFlowTheme.of(context).inkLight,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Flexible(
                  child: Text(
                    '-',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito Sans',
                          color: FlutterFlowTheme.of(context).inkLight,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Flexible(
                  child: Text(
                    widget.timeTo!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito Sans',
                          color: FlutterFlowTheme.of(context).inkLight,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
            Container(
              width: double.infinity,
              height: 6.0,
              decoration: BoxDecoration(
                color: widget.text == widget.activeItem
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).greyG200,
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ),
    );
  }
}
