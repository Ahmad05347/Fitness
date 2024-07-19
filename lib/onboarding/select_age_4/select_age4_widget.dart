import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/onboarding/select_weight_5/select_weight5_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'select_age4_model.dart';

export 'select_age4_model.dart';

class SelectAge4Widget extends StatefulWidget {
  const SelectAge4Widget({super.key});

  @override
  State<SelectAge4Widget> createState() => _SelectAge4WidgetState();
}

class _SelectAge4WidgetState extends State<SelectAge4Widget> {
  late SelectAge4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAge4Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> updateUserAge(int age) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection("personalInfo")
          .doc("details");
      await userDoc.set({
        'age': age,
      }, SetOptions(merge: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF0C0C0C),
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4/7',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('FAQs');
                },
                child: Text(
                  'Need Help?',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF959E9F),
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0C0C0C), Colors.black],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 50.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select\nAge',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.0,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Select what your current age is',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF848484),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.minus,
                        color: enabled
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).alternate,
                        size: 37.0,
                      ),
                      incrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.plus,
                        color: enabled
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).alternate,
                        size: 37.0,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 70.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      count: _model.ageValue ??= 21,
                      updateCount: (count) =>
                          setState(() => _model.ageValue = count),
                      stepSize: 1,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 30.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await updateUserAge(_model.ageValue ?? 21);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SelectWeight5Widget(),
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
      ),
    );
  }
}
