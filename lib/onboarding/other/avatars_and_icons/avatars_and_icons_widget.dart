import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';

import '/components/icon_unlocked_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'avatars_and_icons_model.dart';

export 'avatars_and_icons_model.dart';

class AvatarsAndIconsWidget extends StatefulWidget {
  const AvatarsAndIconsWidget({super.key});

  @override
  State<AvatarsAndIconsWidget> createState() => _AvatarsAndIconsWidgetState();
}

class _AvatarsAndIconsWidgetState extends State<AvatarsAndIconsWidget> {
  late AvatarsAndIconsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarsAndIconsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.black,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => _model.unfocusNode.canRequestFocus
                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                : FocusScope.of(context).unfocus(),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.9,
                child: const IconUnlockedWidget(),
              ),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));
    });

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Text(
                  'Done',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF4CD964),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color(0xFF0C0C0C)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Unlock as you progress!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Get unique Profile Pictures',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Text(
                            '200',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFF6C81E),
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    children: [
                      Lottie.asset(
                        'assets/lottie_animations/Animation_-_1718493129226.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 120.0,
                                color: Color(0xFF0ED276),
                                offset: Offset(
                                  0.0,
                                  0.0,
                                ),
                                spreadRadius: 5.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 7.0,
                            ),
                          ),
                          child: Container(
                            width: 189.0,
                            height: 189.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Regular Joe',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 35.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      'Congratulations on starting your journey. Your part of 30% of people who change their lives. Right now your regular but not for long ;)',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFFBBBBBB),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 40.0, 0.0, 0.0),
                    child: Text(
                      'Put in the work, get more avatars',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const Divider(
                    height: 40.0,
                    thickness: 1.0,
                    color: Color(0xFF474747),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Avatars',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 30.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Icons',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 30.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(const SizedBox(width: 40.0)),
                  ),
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.42,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF151513),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 20.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, -1.0),
                                                child: Text(
                                                  'Regular Joe',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, 1.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                      width: 79.0,
                                                      height: 79.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, -1.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Free',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10.0, 2.0, 10.0, 2.0),
                                      child: Text(
                                        'Selected',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF151513),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Text(
                                              'Regular Joe',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                  width: 79.0,
                                                  height: 79.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Free',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF151513),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Text(
                                              'Regular Joe',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                  width: 79.0,
                                                  height: 79.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                30.0, 10.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Text(
                                                    '200',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xFFF6C81E),
                                                    size: 15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF151513),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Text(
                                              'Regular Joe',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                  width: 79.0,
                                                  height: 79.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Free',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF151513),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Text(
                                              'Regular Joe',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                  width: 79.0,
                                                  height: 79.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Free',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                              Align(
                                alignment:
                                    const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.42,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF151513),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Text(
                                              'Regular Joe',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://s3-alpha-sig.figma.com/img/3c68/9f62/55f3813cbaefcae37a54f100544cf2aa?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZyLyGGUk4Ht7k8IklF22AtqjviDu~yFbF-2Yt32bCtNFq64ULSxS0-Uk3MZkev0~IWAHRfOki1jISWYhf~h95jXKi~m7yMzr0wkwEego-QFNlNUtYubsK1oTSkHz5KfBr3AjFR4AVU0kGdEgD5S~-Bui3LFtBXwk25b-h~lSfgkih5Ng3MhmBK~RoBHcbYA9wjawP78nG-g4~HolQTFwGk5PjyXcqosaROwx9m9bUrUXYoYq9hIk6JWf6cZrOVeyoG8FNYttZTwS4Wo34l5gzpWcvzGjCmHo2x9Y0ULdR7dCkz~-3tZAu0iUp0NBn02B7qc5xpCJAX7fubkPODOAGg__',
                                                  width: 79.0,
                                                  height: 79.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Free',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                            ],
                          ),
                        ),
                      ],
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
