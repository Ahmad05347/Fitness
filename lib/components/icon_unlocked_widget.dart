import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'icon_unlocked_model.dart';

export 'icon_unlocked_model.dart';

class IconUnlockedWidget extends StatefulWidget {
  const IconUnlockedWidget({super.key});

  @override
  State<IconUnlockedWidget> createState() => _IconUnlockedWidgetState();
}

class _IconUnlockedWidgetState extends State<IconUnlockedWidget> {
  late IconUnlockedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconUnlockedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Icon Unlocked!',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 35.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '30% Of Users Unlocked This As Well\nSemi Rare',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Text(
                      '200',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
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
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Lottie.asset(
                  'assets/lottie_animations/Animation_-_1718464551516.json',
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 250.0,
                  fit: BoxFit.fill,
                  animate: true,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 120.0,
                          color: Color(0xFFE0CA06),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                          spreadRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        color: Color(0xFFE0CA06),
                        width: 7.0,
                      ),
                    ),
                    child: Container(
                      width: 189.0,
                      height: 189.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/df29/ff9f/638896122cd2227e19b9f785497d7762?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=R59EJVreKc-ZEnANpDQw1SmCj3wb~0P6bCvgo1zR47m2ypFTImPlrKDbxzL9tSc4jHqKoebJlCy~XkcjoRmIi6cBhWGSepAXDA49JUi6A42ONLFSuziFJdU-St0jr35arXyuTMCzH2cv76nkizdJYh2c~6tO3jIO~zUorx0tFH0DK2drPLQBZK5574JaMD1W3~e4yyIeJaPjziudwBtuPBPUJh2bDvPmXVN-mU62aWMrQ6k-L0zEhBUXXEE9NFDp8KdiV0r1OcI~xnOGofSowk~4c1M7gDqD7HT9sJHTF5e1jbUDmvR9iUSs~gshr~mYWKn6k1BFn2FPbj7Rs7LzAA__',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'To My Word!',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 35.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Text(
                'Most people say they will make a change, few do. Congratulations on making the 1st step to change, lets see you make the second step now ;)',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFBBBBBB),
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Continue',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  height: 44.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFECE17F),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF171717),
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
