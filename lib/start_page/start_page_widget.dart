import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'start_page_model.dart';

export 'start_page_model.dart';

class StartPageWidget extends StatefulWidget {
  const StartPageWidget({super.key});

  @override
  State<StartPageWidget> createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  late StartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartPageModel());

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
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/c260d00e76497dd68faf6933256320c1.jpeg',
              ).image,
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
              color: Color(0xBF000000),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'New Leaf',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 52.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          lineHeight: 1.2,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#1 Health App',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              lineHeight: 0.0,
                            ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.check_circle,
                          color: Color(0xFF248AEE),
                          size: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pushNamed(
                                    context, 'CreateAccountPage');
                                /*
                                 extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.scale,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  },
                                 */
                              },
                              child: Text(
                                'Continue with Email',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text:
                                      'By logging in or registering, you agree to our ',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: 'Terms of service',
                                  style: const TextStyle(
                                    color: Color(0xFFBABAC1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  mouseCursor: SystemMouseCursors.click,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      Navigator.pushNamed(
                                          context, 'TermsOfService');
                                    },
                                ),
                                const TextSpan(
                                  text: ' and',
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: ' Privacy Policy',
                                  style: const TextStyle(
                                    color: Color(0xFFBABAC1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  mouseCursor: SystemMouseCursors.click,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      Navigator.pushNamed(
                                          context, 'PrivacyPolicy');
                                    },
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF8D8C8C),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ].divide(const SizedBox(height: 60.0)),
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
