import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'empty_card_model.dart';
export 'empty_card_model.dart';

class EmptyCardWidget extends StatefulWidget {
  const EmptyCardWidget({
    super.key,
    this.photo,
    this.title,
    this.description,
    this.buttonText,
    this.action,
  });

  final String? photo;
  final String? title;
  final String? description;
  final String? buttonText;
  final Future Function()? action;

  @override
  State<EmptyCardWidget> createState() => _EmptyCardWidgetState();
}

class _EmptyCardWidgetState extends State<EmptyCardWidget> {
  late EmptyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCardModel());

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
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 500),
              fadeOutDuration: Duration(milliseconds: 500),
              imageUrl: widget.photo!,
              width: 160.0,
              height: 165.0,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'TITLE',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito Sans',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.description,
                      'DESCRIPTION',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Nunito Sans',
                          color: FlutterFlowTheme.of(context).inkLight,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  await widget.action?.call();
                },
                text: widget.buttonText!,
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Nunito Sans',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ],
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
