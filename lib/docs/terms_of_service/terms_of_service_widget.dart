import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_of_service_model.dart';
export 'terms_of_service_model.dart';

class TermsOfServiceWidget extends StatefulWidget {
  const TermsOfServiceWidget({super.key});

  @override
  State<TermsOfServiceWidget> createState() => _TermsOfServiceWidgetState();
}

class _TermsOfServiceWidgetState extends State<TermsOfServiceWidget> {
  late TermsOfServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsOfServiceModel());

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
                    'Terms of Service',
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
                    'Effective Date: 11 September 2023\n\n1.) Acceptance of Terms\n\nBy accessing or using the New Leaf mobile application ("App"), you agree to comply with and be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not use the App.\n\n\n2.) Changes to Terms\n\nWe reserve the right to change, modify, or revise these Terms at any time. Any changes will become effective immediately upon being posted. We will notify users of any changes through the App or via email.\n\n3.) Privacy\n\nYour privacy matters to us. Our Privacy Policy explains how we handle your personal information and is incorporated into these Terms by reference.\n\n4.) Health Disclaimer\n\nThe App is not a substitute for professional medical advice or treatment. Always consult with a healthcare provider for medical advice and treatment. We are not liable for any injuries or health issues that may arise from using the App.\n\n5.) User Responsibilities\n\nYou are responsible for any activity that occurs in your New Leaf account. To protect your account, keep your account details and password confidential. Users must be at least 18 years old to use the App.\n\n6.) Data Storage and Security\n\nWe use Superbase for secure data storage. While we strive for security through encryption and other measures, we cannot guarantee absolute security of your data.\n\n7.) User Content\n\nYou are solely responsible for the content you post on New Leaf. We reserve the right to remove or modify content for any reason, including content that we believe violates these Terms, our policies, or contains hate speech, harassment, or explicit material.\n\n8.) Limitation of Liability\n\nTo the extent permitted by law, New Leaf will not be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to, loss of profits or data, arising out of or related to these Terms.\n\n9.) Indemnification\n\nYou agree to indemnify and hold harmless New Leaf and its officers, directors, employees, and agents from any and all claims, demands, losses, liabilities, and expenses arising out of or in connection with: (i) your use of the App; (ii) your breach or violation of any of these Terms; (iii) New Leaf\'s use of your User Content; or (iv) your violation of the rights of any third party.\n\n10.) Dispute Resolution\n\nYou agree that any disputes between you and New Leaf will be resolved by binding, individual arbitration under the laws and regulations of Gauteng, South Africa. The arbitration process will be conducted in English and follow the rules set by a recognized arbitration institution.\n\n11.) Governing Law\n\nThese Terms are governed by and construed in accordance with the laws of Gauteng, South Africa, without regard to its conflict of law principles.\n\n12.) Contact Us\nFor any questions about these Terms, please contact us at info@itsanewleaf.com \n\n13.) Termination\nWe reserve the right to terminate or suspend your account for violations of these Terms.\n\n14.) Refund Policy\nAll in-app purchases are final and non-refundable, unless otherwise stated.\n\n15.) Intellectual Property\n\nAll content within the App is the property of New Leaf and is protected under copyright law. Unauthorized use of this content is prohibited.',
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
