import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/auth/firestore_service.dart';
import 'package:fitness/onboarding/other/avatars_and_icons/avatars_and_icons_widget.dart';
import 'package:fitness/onboarding/select_gender_2/select_gender2_widget.dart';
import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'name_and_profile_picture1_model.dart';

export 'name_and_profile_picture1_model.dart';

class NameAndProfilePicture1Widget extends StatefulWidget {
  const NameAndProfilePicture1Widget({super.key});

  @override
  State<NameAndProfilePicture1Widget> createState() =>
      _NameAndProfilePicture1WidgetState();
}

class _NameAndProfilePicture1WidgetState
    extends State<NameAndProfilePicture1Widget> {
  late NameAndProfilePicture1Model _model;
  final FirestoreService _firestoreService = FirestoreService();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NameAndProfilePicture1Model());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<String?> getCurrentUserId() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return user.uid;
    } else {
      // Handle user not logged in
      return null;
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
                '1/7',
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
        body: ListView(
          children: [
            Container(
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
                padding: const EdgeInsetsDirectional.fromSTEB(
                    15.0, 15.0, 15.0, 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Welcome!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 40.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Select Name or Nickname',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF848484),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 30.0, 0.0, 30.0),
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: 240.0,
                                height: 240.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/Ellipse 26.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const AvatarsAndIconsWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 80.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.black,
                                        size: 15.0,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Edit',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        'What should we call you?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 10.0, 39.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Type in name/nickname',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF707070),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.nameTextController,
                                focusNode: _model.nameFocusNode,
                                autofocus: true,
                                autofillHints: const [AutofillHints.name],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Your Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFC2CBCF),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E343F),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  filled: true,
                                  fillColor: Colors.black,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 30.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyLarge,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.name,
                                validator: _model.nameTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 30.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: (_model.nameTextController.text.isEmpty
                              ? null
                              : () async {
                                  final userId = await getCurrentUserId();
                                  if (userId != null) {
                                    final name = _model.nameTextController.text;
                                    await _firestoreService.saveUserName(
                                        userId, name);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const SelectGender2Widget(),
                                      ),
                                    );
                                  } else {
                                    // Handle user not logged in
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'User not logged in. Please log in to continue.'),
                                      ),
                                    );
                                  }
                                }),
                          text: 'Continue',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                            disabledColor: const Color(0xFF424848),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
