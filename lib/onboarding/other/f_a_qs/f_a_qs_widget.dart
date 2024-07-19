import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'f_a_qs_model.dart';
export 'f_a_qs_model.dart';

class FAQsWidget extends StatefulWidget {
  const FAQsWidget({super.key});

  @override
  State<FAQsWidget> createState() => _FAQsWidgetState();
}

class _FAQsWidgetState extends State<FAQsWidget> {
  late FAQsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
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
        backgroundColor: const Color(0xFF0C0C0C),
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: const BoxDecoration(
            color: Color(0xFF0C0C0C),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Frequently Asked \nQuestions:',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Top Questions To Help With Set-Up',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF848484),
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF151513),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController1,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'How do avatars work?',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Amazon Web Services, Inc. is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis. ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF848484),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF151513),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController2,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'How do avatars work?',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Amazon Web Services, Inc. is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis. ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF848484),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF151513),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController3,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'How do avatars work?',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Amazon Web Services, Inc. is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis. ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF848484),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF151513),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController4,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'How do avatars work?',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Amazon Web Services, Inc. is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis. ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF848484),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF151513),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: const Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController5,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'How do avatars work?',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            collapsed: Container(),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Amazon Web Services, Inc. is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered, pay-as-you-go basis. ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF848484),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
