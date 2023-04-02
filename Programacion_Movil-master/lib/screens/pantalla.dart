import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pantalla_model.dart';
export 'pantalla_model.dart';

class PantallaWidget extends StatefulWidget {
  const PantallaWidget({Key? key}) : super(key: key);

  @override
  _PantallaWidgetState createState() => _PantallaWidgetState();
}

class _PantallaWidgetState extends State<PantallaWidget> {
  late PantallaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PantallaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFA8072),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: TextFormField(
                  controller: _model.textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search products...',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF57636C),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                  maxLines: null,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                      child: Text(
                        'Categories',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF57636C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Text(
                      'See All',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF14181B),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/vampiro.jpg',
                                width: double.infinity,
                                height: 115,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                              child: Text(
                                'Vampiro',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue1 = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_purple500_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue1 ??= 3,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemPadding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                              itemSize: 20,
                              glowColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/blody.jpg',
                                width: double.infinity,
                                height: 115,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                              child: Text(
                                'Bloody mary',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue2 = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_purple500_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue2 ??= 3,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemPadding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                              itemSize: 20,
                              glowColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/michelada.jpg',
                                width: double.infinity,
                                height: 115,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                              child: Text(
                                'Michelada',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue3 = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_purple500_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue3 ??= 3,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemPadding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                              itemSize: 20,
                              glowColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
