import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/backend/backend.dart';
import 'package:fitness/flutter_flow/flutter_flow_theme.dart';
import 'package:fitness/flutter_flow/flutter_flow_util.dart';
import 'package:fitness/flutter_flow/flutter_flow_widgets.dart';
import 'package:fitness/onboarding/select_gender_2/select_gender2_model.dart';
import 'package:fitness/onboarding/select_units_3/select_units3_widget.dart';
import 'package:flutter/material.dart';

class SelectGender2Widget extends StatefulWidget {
  const SelectGender2Widget({super.key});

  @override
  State<SelectGender2Widget> createState() => _SelectGender2WidgetState();
}

class _SelectGender2WidgetState extends State<SelectGender2Widget> {
  late SelectGender2Model _model;
  String selectedGender = "Prefer not to say";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectGender2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _updateUserGender(String gender) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final userId = user.uid;
        // Update gender in the personalInfo subcollection
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .collection('personalInfo')
            .doc('details')
            .set(
          {'gender': gender},
          SetOptions(merge: true),
        );
      } else {
        throw FirebaseAuthException(
          code: 'USER_NOT_SIGNED_IN',
          message: 'No user is signed in.',
        );
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  void _onGenderSelected(String gender) async {
    setState(() {
      selectedGender = gender;
    });
    await _updateUserGender(gender);
    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (_) => SelectUnits3Widget(
          selectedGender: selectedGender,
        ),
      ),
    );
  }

  final List<Map<String, String>> imagesData = [
    {
      'path': "assets/images/ujoij 1.jpg",
      'bodyType': "obese",
      'gender': "male",
    },
    {
      'path':
          "assets/images/HD-wallpaper-gym-bodybuilding-gym-motivation-thumbnail copy.jpg",
      'bodyType': "fat",
      'gender': "male",
    },
    {
      'path': "assets/images/sdfg 1.jpg",
      'bodyType': "slim",
      'gender': "female",
    },
  ];

  List<Map<String, String>> _getFilteredImages() {
    if (selectedGender == "Prefer not to say") {
      return imagesData;
    }
    return imagesData
        .where((image) => image['gender'] == selectedGender.toLowerCase())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredImages = _getFilteredImages();

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
                '2/7',
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
                const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                        'Select\nGender',
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
                          'Earn the more you level up',
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
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Select One',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => _onGenderSelected('Male'),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  "assets/images/pexels-mohammad-ubaid-17956265 1.png",
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.42,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () => _onGenderSelected('Male'),
                              text: 'Male',
                              options: FFButtonOptions(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 1.0,
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => _onGenderSelected('Female'),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  "assets/images/pexels-mohammad-ubaid-17956265 1.png",
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.42,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () => _onGenderSelected('Female'),
                              text: 'Female',
                              options: FFButtonOptions(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 1.0,
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Center(
                    child: FFButtonWidget(
                      onPressed: () => _onGenderSelected('Prefer not to say'),
                      text: 'Prefer not to say',
                      options: FFButtonOptions(
                        width: 260.0,
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 0.0),
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 1.0,
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
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
