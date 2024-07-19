import 'package:fitness/onboarding/what_to_track_9/what_to_track9_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'completion_page8_model.dart';

export 'completion_page8_model.dart';

class CompletionPage8Widget extends StatefulWidget {
  const CompletionPage8Widget({super.key});

  @override
  State<CompletionPage8Widget> createState() => _CompletionPage8WidgetState();
}

class _CompletionPage8WidgetState extends State<CompletionPage8Widget> {
  late CompletionPage8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompletionPage8Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: Image.asset(
                              'assets/images/Group.png',
                            ).image,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: Image.asset(
                              'assets/images/Group.png',
                            ).image,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Lottie.asset(
                    'assets/lottie_animations/Animation_-_1718464551516.json',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Basic Information',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 0.0, 0.0, 100.0),
                    child: Text(
                      'Completed!',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 45.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 30.0, 10.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const WhatToTrack9Widget(),
                        ),
                      );
                    },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 50.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
