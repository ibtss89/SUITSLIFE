import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import '../sans_page1/sans_page1_widget.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashSceenWidget extends StatefulWidget {
  const SplashSceenWidget({Key key}) : super(key: key);

  @override
  _SplashSceenWidgetState createState() => _SplashSceenWidgetState();
}

class _SplashSceenWidgetState extends State<SplashSceenWidget> {
  LatLng googleMapsCenter;
  Completer<GoogleMapController> googleMapsController;
  var placePickerValue = FFPlace();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEFEFEF),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 108,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 44, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Search',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF090F13),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Text(
                                  'nearest Ambulances',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF007196),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'Browse our services below.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF8B97A2),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(),
                        child: FlutterFlowGoogleMap(
                          controller: googleMapsController,
                          onCameraIdle: (latLng) => googleMapsCenter = latLng,
                          initialLocation: googleMapsCenter ??=
                              LatLng(16.5171435, 80.6652052),
                          markerColor: GoogleMarkerColor.red,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.27),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey:
                                'AIzaSyD8qcMlLy7GnnfuoSiZuVX3dVHhVRUIqdA',
                            androidGoogleMapsApiKey:
                                'AIzaSyD8qcMlLy7GnnfuoSiZuVX3dVHhVRUIqdA',
                            webGoogleMapsApiKey:
                                'AIzaSyD8qcMlLy7GnnfuoSiZuVX3dVHhVRUIqdA',
                            onSelect: (place) =>
                                setState(() => placePickerValue = place),
                            defaultText: 'SANS',
                            icon: FaIcon(
                              FontAwesomeIcons.ambulance,
                              color: Colors.white,
                              size: 16,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 100,
                              height: 40,
                              color: Color(0xFFF90000),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    color: Color(0x4E000000),
                                    offset: Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color(0xFFEEEEEE),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4, 0, 4, 0),
                                      child: Icon(
                                        Icons.search_rounded,
                                        color: Color(0xFF95A1AC),
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.95, 0),
                                        child: Icon(
                                          Icons.tune_rounded,
                                          color: Color(0xFF95A1AC),
                                          size: 24,
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
                    Align(
                      alignment: AlignmentDirectional(0.03, 0.65),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SansPage1Widget(),
                                  ),
                                );
                              },
                              text: 'YES',
                              options: FFButtonOptions(
                                width: 100,
                                height: 50,
                                color: Color(0xFFF90000),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 40,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'NO',
                              options: FFButtonOptions(
                                width: 100,
                                height: 50,
                                color: Color(0xFF007196),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 40,
                              ),
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
          Align(
            alignment: AlignmentDirectional(0.03, 0.55),
            child: Text(
              'Is It Accident Emergency ?',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lato',
                    color: Color(0xFFF90000),
                    fontWeight: FontWeight.w900,
                    lineHeight: 2,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
