import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Privacy Policy',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Effective Date: 11 September 2023\n\n1.) Introduction\n\nWelcome to New Leaf. This Privacy Policy is designed to help you understand how we collect, use, and safeguard your information.\n\n2.) Information We Collect\n\nWe collect information you provide directly to us, such as your name, gender, height, and other details you enter in our questionnaire.\n\n3.)  How We Use Your Information\n\nWe use your information to provide, maintain, and improve our services, including to personalize features and content and make suggestions for you on our App.\n\n4.)  Data Storage\n\nWe use Superbase for secure data storage. Your data is stored in compliance with high security standards.\n\n5.) Sharing of Information\n\nWe do not sell your personal information to third parties. We may share your information with third-party vendors and service providers that perform services on our behalf.\n\n6.) Your Choices\n\nYou have the right to access, update, or delete your information at any time through the App\'s settings.\n\n7.) Security Measures\n\nWe take reasonable measures to help protect your information from loss, theft, misuse, and unauthorized access.\n\n8.) Children\'s Privacy\n\nOur App is not intended for children under the age of 13, and we do not knowingly collect information from children under 13.\n\n9.)  Changes to this Policy\n\nWe may update this Privacy Policy from time to time. If we make changes, we will notify you by revising the "Effective Date" at the top of this policy.\n\n10.) Contact Us\n\nFor any questions about this Privacy Policy, please contact us at info@itsanewleaf.com\n\n11.) Governing Law\n\nThis Privacy Policy is governed by and construed in accordance with the laws of Gauteng, South Africa.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
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
