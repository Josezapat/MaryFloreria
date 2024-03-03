import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pasarelade_pago_model.dart';
export 'pasarelade_pago_model.dart';

class PasareladePagoWidget extends StatefulWidget {
  const PasareladePagoWidget({super.key});

  @override
  State<PasareladePagoWidget> createState() => _PasareladePagoWidgetState();
}

class _PasareladePagoWidgetState extends State<PasareladePagoWidget> {
  late PasareladePagoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasareladePagoModel());

    _model.yourNameController1 ??=
        TextEditingController(text: currentUserDisplayName);
    _model.yourNameFocusNode1 ??= FocusNode();

    _model.yourNameController2 ??=
        TextEditingController(text: currentPhoneNumber);
    _model.yourNameFocusNode2 ??= FocusNode();

    _model.yourNameController3 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.dni, 0).toString());
    _model.yourNameFocusNode3 ??= FocusNode();

    _model.nombreenvioController ??= TextEditingController();
    _model.nombreenvioFocusNode ??= FocusNode();

    _model.numeroenvioController ??= TextEditingController();
    _model.numeroenvioFocusNode ??= FocusNode();

    _model.yourNameController4 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.direccion, ''));
    _model.yourNameFocusNode4 ??= FocusNode();

    _model.yourNameController5 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.referencias, ''));
    _model.yourNameFocusNode5 ??= FocusNode();

    _model.dedicatoriaController ??= TextEditingController();
    _model.dedicatoriaFocusNode ??= FocusNode();

    _model.yourNameController6 ??= TextEditingController();
    _model.yourNameFocusNode6 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CartRecord>>(
      stream: queryCartRecord(
        queryBuilder: (cartRecord) => cartRecord
            .where(
              'creator',
              isEqualTo: currentUserReference,
            )
            .where(
              'isActive',
              isEqualTo: true,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<CartRecord> pasareladePagoCartRecordList = snapshot.data!;
        final pasareladePagoCartRecord = pasareladePagoCartRecordList.isNotEmpty
            ? pasareladePagoCartRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
                actions: [],
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Datos del Cliente',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.yourNameController1,
                                      focusNode: _model.yourNameFocusNode1,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nombre Completo',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        hintText: 'Tu nombre',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      validator: _model
                                          .yourNameController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.yourNameController2,
                                      focusNode: _model.yourNameFocusNode2,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'WhatsApp',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        hintText: 'tu número de celular',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      validator: _model
                                          .yourNameController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => TextFormField(
                                      controller: _model.yourNameController3,
                                      focusNode: _model.yourNameFocusNode3,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'DNI o RUC (Opcional)',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        hintText:
                                            'Documento de Identidad o Ruc',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      validator: _model
                                          .yourNameController3Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Datos de Envío',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowRadioButton(
                                        options: [
                                          'Envío a Domicilio',
                                          'Recoger en Tienda'
                                        ].toList(),
                                        onChanged: (val) => setState(() {}),
                                        controller: _model
                                                .radioButtonValueController1 ??=
                                            FormFieldController<String>(
                                                'Recoger en Tienda'),
                                        optionHeight: 32.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        selectedTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor: Color(0xFF9E0510),
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.radioButtonValue1 ==
                                    'Envío a Domicilio')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<DestinoRecord>>(
                                        stream: queryDestinoRecord(
                                          queryBuilder: (destinoRecord) =>
                                              destinoRecord.orderBy('Ciudad'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<DestinoRecord>
                                              ciudadDestinoRecordList =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .ciudadValueController1 ??=
                                                FormFieldController<String>(
                                              _model.ciudadValue1 ??=
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.ciudad,
                                                      ''),
                                            ),
                                            options: ciudadDestinoRecordList
                                                .map((e) => e.ciudad)
                                                .toList(),
                                            onChanged: (val) => setState(() =>
                                                _model.ciudadValue1 = val),
                                            width: 335.0,
                                            height: 50.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                    ),
                                            hintText: 'Ciudad - Distrito',
                                            searchHintText:
                                                'Search for an item...',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                if (_model.radioButtonValue1 ==
                                    'Recoger en Tienda')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: StreamBuilder<List<TiendaRecord>>(
                                      stream: queryTiendaRecord(
                                        queryBuilder: (tiendaRecord) =>
                                            tiendaRecord.orderBy('Tiendas'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TiendaRecord>
                                            ciudadTiendaRecordList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.ciudadValueController2 ??=
                                                  FormFieldController<String>(
                                            _model.ciudadValue2 ??=
                                                'Av. La Fontana 1295 - La Molina',
                                          ),
                                          options: ciudadTiendaRecordList
                                              .map((e) => e.tiendas)
                                              .toList(),
                                          onChanged: (val) => setState(
                                              () => _model.ciudadValue2 = val),
                                          width: 335.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          searchTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          hintText: 'Recoger en Tienda',
                                          searchHintText:
                                              'Search for an item...',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: TextFormField(
                                    controller: _model.nombreenvioController,
                                    focusNode: _model.nombreenvioFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Nombre Del Destinatario',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      hintText: 'Nombre del Destinatario',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 0.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                    validator: _model
                                        .nombreenvioControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: TextFormField(
                                    controller: _model.numeroenvioController,
                                    focusNode: _model.numeroenvioFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Teléfono del Destinatario',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      hintText: 'Teléfono del Destinatario',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 0.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                    validator: _model
                                        .numeroenvioControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                if (_model.radioButtonValue1 ==
                                    'Envío a Domicilio')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 16.0, 20.0, 16.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => TextFormField(
                                        controller: _model.yourNameController4,
                                        focusNode: _model.yourNameFocusNode4,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Dirección de Envío ',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          hintText: 'Dirección de Envío',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 0.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        validator: _model
                                            .yourNameController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                if (_model.radioButtonValue1 ==
                                    'Envío a Domicilio')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 16.0, 20.0, 16.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => TextFormField(
                                        controller: _model.yourNameController5,
                                        focusNode: _model.yourNameFocusNode5,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Referencias',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          hintText:
                                              'Referencias para llegar al destino',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 0.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                        validator: _model
                                            .yourNameController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 16.0, 20.0, 16.0),
                                  child: TextFormField(
                                    controller: _model.dedicatoriaController,
                                    focusNode: _model.dedicatoriaFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Dedicatoria (Opcional)',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      hintText: 'Mensaje de Dedicatoria',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model
                                        .dedicatoriaControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Escoger Fecha de Entrega',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 380.0,
                                            height: 290.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: FlutterFlowCalendar(
                                                  color: Color(0xFFEE9494),
                                                  iconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  weekFormat: false,
                                                  weekStartsMonday: false,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  rowHeight: 35.0,
                                                  onChange: (DateTimeRange?
                                                      newSelectedDate) {
                                                    setState(() => _model
                                                            .calendarSelectedDay =
                                                        newSelectedDate);
                                                  },
                                                  titleStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ),
                                                  dayOfWeekStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ),
                                                  dateStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ),
                                                  selectedDateStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ),
                                                  inactiveDateStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                          ),
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Escoger Hora de Entrega',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: StreamBuilder<List<HorarioRecord>>(
                            stream: queryHorarioRecord(
                              queryBuilder: (horarioRecord) =>
                                  horarioRecord.orderBy('Horarios'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<HorarioRecord> horarioHorarioRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller: _model.horarioValueController ??=
                                    FormFieldController<String>(
                                  _model.horarioValue ??= '8:00 am - 7:00 pm',
                                ),
                                options: horarioHorarioRecordList
                                    .map((e) => e.horarios)
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => _model.horarioValue = val),
                                width: 335.0,
                                height: 50.0,
                                searchHintTextStyle:
                                    FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                searchTextStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                    ),
                                hintText: '8:00 am - 7:00 pm',
                                searchHintText: 'Search for an item...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: true,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 16.0, 20.0, 16.0),
                                child: TextFormField(
                                  controller: _model.yourNameController6,
                                  focusNode: _model.yourNameFocusNode6,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Cupón de Descuento',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                    hintText: 'Cupón (Opcional)',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 24.0, 0.0, 24.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.yourNameController6Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    cupon: _model.yourNameController6.text,
                                  ));
                                },
                                text: 'Aplicar',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF9E0510),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowRadioButton(
                              options: [
                                'Transferencia BCP,  BBVA, Yape o Plin '
                              ].toList(),
                              onChanged: (val) => setState(() {}),
                              controller: _model.radioButtonValueController2 ??=
                                  FormFieldController<String>(
                                      'Transferencia BCP,  BBVA, Yape o Plin '),
                              optionHeight: 50.0,
                              optionWidth: 350.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Color(0xFF9E0510),
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 10.0),
                                    child: SelectionArea(
                                        child: Text(
                                      'Puedes pagar depositando en nuestras cuentas:\n•\tCCI BCP:00219300204489904310\n•\tCta. Cte. BCP: 1932044899043 \n•\tCta. Cte. BBVA: 0011 08140100577750  \n•\tRUC: 20549662961\n•\tYape/Plin: 923397042 \n\nDespués de realizar el pago debe de adjuntar el comprobante de pago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                    )),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          child: Image.network(
                                            'https://play-lh.googleusercontent.com/gBpVaCpZsbBrLufT06aRpuLQvsUq1KAZUCEof_ps76mtB8_llJg3xv24mey8I0m3dUE',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            child: Image.network(
                                              'https://play-lh.googleusercontent.com/ZsRXxnAaNfWkGh0znnApV1d2BnTysMJVgZSAG5i4xX5c3weg6C0IGr6rtkqWMrXZriA',
                                              width: 75.0,
                                              height: 75.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          child: Image.network(
                                            'https://seeklogo.com/images/Y/yape-logo-3E473EE7E5-seeklogo.com.png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://seeklogo.com/images/P/plin-logo-967A4AF583-seeklogo.com.png',
                                            width: 75.0,
                                            height: 75.0,
                                            fit: BoxFit.cover,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    _model.uploadedFileUrl,
                                    'https://cdn-icons-png.flaticon.com/512/6583/6583130.png',
                                  ),
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedMedia = await selectMedia(
                                      mediaSource: MediaSource.photoGallery,
                                      multiImage: false,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        showUploadMessage(
                                          context,
                                          'Uploading file...',
                                          showLoading: true,
                                        );
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl =
                                              downloadUrls.first;
                                        });
                                        showUploadMessage(context, 'Success!');
                                      } else {
                                        setState(() {});
                                        showUploadMessage(
                                            context, 'Failed to upload data');
                                        return;
                                      }
                                    }
                                  },
                                  text: 'Adjuntar Archivo',
                                  icon: Icon(
                                    Icons.download,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 180.0,
                                    height: 40.0,
                                    padding: EdgeInsets.all(0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF9E0510),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
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
                Container(
                  width: 392.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<CuponesRecord>>(
                        stream: queryCuponesRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<CuponesRecord> columnCuponesRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnCuponesRecord =
                              columnCuponesRecordList.isNotEmpty
                                  ? columnCuponesRecordList.first
                                  : null;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 4.0, 24.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Subtotal',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 36.0,
                                          icon: Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFF57636C),
                                            size: 18.0,
                                          ),
                                          showLoadingIndicator: true,
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                    StreamBuilder<List<Cupon10Record>>(
                                      stream: queryCupon10Record(
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<Cupon10Record>
                                            textCupon10RecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final textCupon10Record =
                                            textCupon10RecordList.isNotEmpty
                                                ? textCupon10RecordList.first
                                                : null;
                                        return Text(
                                          formatNumber(
                                            pasareladePagoCartRecord!.amount,
                                            formatType: FormatType.decimal,
                                            decimalType: DecimalType.automatic,
                                            currency: 'S/',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 18.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 4.0, 24.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Envío',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 36.0,
                                          icon: Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFF57636C),
                                            size: 18.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                    AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<Cupon10Record>>(
                                        stream: queryCupon10Record(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<Cupon10Record>
                                              textCupon10RecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final textCupon10Record =
                                              textCupon10RecordList.isNotEmpty
                                                  ? textCupon10RecordList.first
                                                  : null;
                                          return Text(
                                            valueOrDefault<String>(
                                              _model.radioButtonValue1 ==
                                                      'Envío a Domicilio'
                                                  ? (valueOrDefault(
                                                              currentUserDocument
                                                                  ?.cupon,
                                                              '') ==
                                                          textCupon10Record
                                                              ?.cupones
                                                      ? 'S/0'
                                                      : () {
                                                          if (_model.ciudadValue1 ==
                                                              'Lima - La Molina') {
                                                            return 's/10';
                                                          } else if (_model.ciudadValue1 ==
                                                              'Lima - Ate') {
                                                            return 's/15';
                                                          } else if ((_model.ciudadValue1 == 'Lima - San Borja') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Santa Anita') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Luis')) {
                                                            return 's/18';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Santiago de Surco') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - El Agustino')) {
                                                            return 's/20';
                                                          } else if (_model.ciudadValue1 ==
                                                              'Lima - Lince') {
                                                            return 's/22';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Surquillo') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Isidro') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Miraflores') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - La Victoria') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Jesús María')) {
                                                            return 's/25';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Villa María del Triunfo') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Miguel') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Martín de Porres') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Juan de Miraflores') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Rímac') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Pueblo Libre') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Magdalena del Mar') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Lima') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Chorrillos') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Breña')) {
                                                            return 's/30';
                                                          } else if (_model.ciudadValue1 ==
                                                              'Lima - Breña') {
                                                            return 's/28';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Villa el Salvador') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - San Juan de Lurigancho') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Los Olivos') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Independencia') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Cieneguilla') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Chaclacayo')) {
                                                            return 's/35';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Lurigancho Chosica') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Comas')) {
                                                            return 's/40';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Puente Piedra') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Lurín') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Carabayllo')) {
                                                            return 's/45';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Santa María del Mar') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Punta Negra') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Lima - Punta Hermosa') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Callao - Ventanilla') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Callao - La Punta') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Callao - La Perla') ||
                                                              (_model.ciudadValue1 ==
                                                                  'Callao - Carmen de la Legua Reynoso') ||
                                                              (_model.ciudadValue1 == 'Callao - Callao') ||
                                                              (_model.ciudadValue1 == 'Callao - Bellavista')) {
                                                            return 's/50';
                                                          } else if ((_model.ciudadValue1 == 'Lima - Santa Rosa') || (_model.ciudadValue1 == 'Lima - San Bartolo') || (_model.ciudadValue1 == 'Lima - Ancón')) {
                                                            return 's/60';
                                                          } else if (_model.ciudadValue1 == 'Lima - Pucusana') {
                                                            return 's/80';
                                                          } else {
                                                            return 'Selecciona un Distrito';
                                                          }
                                                        }())
                                                  : 's/0',
                                              's/0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 18.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 4.0, 24.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Total a Pagar',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Montserrat',
                                              ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 36.0,
                                          icon: Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFF57636C),
                                            size: 18.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                    AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<Cupon10Record>>(
                                        stream: queryCupon10Record(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<Cupon10Record>
                                              textCupon10RecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final textCupon10Record =
                                              textCupon10RecordList.isNotEmpty
                                                  ? textCupon10RecordList.first
                                                  : null;
                                          return Text(
                                            _model.radioButtonValue1 ==
                                                    'Envío a Domicilio'
                                                ? (valueOrDefault(
                                                            currentUserDocument
                                                                ?.cupon,
                                                            '') ==
                                                        textCupon10Record
                                                            ?.cupones
                                                    ? formatNumber(
                                                        pasareladePagoCartRecord!
                                                            .amount,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .automatic,
                                                        currency: 'S/',
                                                      )
                                                    : () {
                                                        if (_model.ciudadValue1 ==
                                                            'Lima - La Molina') {
                                                          return formatNumber(
                                                            functions.total10(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if (_model.ciudadValue1 ==
                                                            'Lima - Ate') {
                                                          return formatNumber(
                                                            functions.total15(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - San Borja') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Santa Anita') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Luis')) {
                                                          return formatNumber(
                                                            functions.total18(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Santiago de Surco') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - El Agustino')) {
                                                          return formatNumber(
                                                            functions.total20(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if (_model.ciudadValue1 ==
                                                            'Lima - Lince') {
                                                          return formatNumber(
                                                            functions.total22(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Surquillo') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Isidro') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Miraflores') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - La Victoria') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Jesús María')) {
                                                          return formatNumber(
                                                            functions.total25(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Villa María del Triunfo') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Miguel') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Martín de Porres') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Juan de Miraflores') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Rímac') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Pueblo Libre') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Magdalena del Mar') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Lima') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Chorrillos') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Breña')) {
                                                          return formatNumber(
                                                            functions.total30(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if (_model.ciudadValue1 ==
                                                            'Lima - Breña') {
                                                          return functions
                                                              .total28(
                                                                  pasareladePagoCartRecord!
                                                                      .amount)
                                                              .toString();
                                                        } else if ((_model.ciudadValue1 == 'Lima - Villa el Salvador') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - San Juan de Lurigancho') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Los Olivos') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Independencia') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Cieneguilla') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Chaclacayo')) {
                                                          return formatNumber(
                                                            functions.total35(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Lurigancho Chosica') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Comas')) {
                                                          return formatNumber(
                                                            functions.total40(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Puente Piedra') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Lurín') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Carabayllo')) {
                                                          return formatNumber(
                                                            functions.total45(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Santa María del Mar') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Punta Negra') ||
                                                            (_model.ciudadValue1 ==
                                                                'Lima - Punta Hermosa') ||
                                                            (_model.ciudadValue1 ==
                                                                'Callao - Ventanilla') ||
                                                            (_model.ciudadValue1 ==
                                                                'Callao - La Punta') ||
                                                            (_model.ciudadValue1 == 'Callao - La Perla') ||
                                                            (_model.ciudadValue1 == 'Callao - Carmen de la Legua Reynoso') ||
                                                            (_model.ciudadValue1 == 'Callao - Callao') ||
                                                            (_model.ciudadValue1 == 'Callao - Bellavista')) {
                                                          return formatNumber(
                                                            functions.total50(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if ((_model.ciudadValue1 == 'Lima - Santa Rosa') || (_model.ciudadValue1 == 'Lima - San Bartolo') || (_model.ciudadValue1 == 'Lima - Ancón')) {
                                                          return formatNumber(
                                                            functions.total60(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else if (_model.ciudadValue1 == 'Lima - Pucusana') {
                                                          return formatNumber(
                                                            functions.total80(
                                                                pasareladePagoCartRecord!
                                                                    .amount),
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        } else {
                                                          return formatNumber(
                                                            pasareladePagoCartRecord!
                                                                .amount,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: 's/',
                                                          );
                                                        }
                                                      }())
                                                : formatNumber(
                                                    pasareladePagoCartRecord!
                                                        .amount,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType:
                                                        DecimalType.automatic,
                                                    currency: 's/',
                                                  ),
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF9E0510),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, -0.35),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StreamBuilder<List<OrderRecord>>(
                        stream: queryOrderRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<OrderRecord> buttonOrderRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonOrderRecord =
                              buttonOrderRecordList.isNotEmpty
                                  ? buttonOrderRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              if (_model.numeroenvioController.text == null ||
                                  _model.numeroenvioController.text == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Es Necesario el Teléfono del Destinatario',
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1800),
                                    backgroundColor: Color(0xFFF40409),
                                  ),
                                );
                              } else {
                                if (_model.nombreenvioController.text == null ||
                                    _model.nombreenvioController.text == '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Es Necesario el Nombre del Destinatario',
                                        style: GoogleFonts.getFont(
                                          'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 1800),
                                      backgroundColor: Color(0xFFF40409),
                                    ),
                                  );
                                } else {
                                  if (_model.horarioValue == null ||
                                      _model.horarioValue == '') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Debes escoger un horario de entrega',
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 1800),
                                        backgroundColor: Color(0xFFF40409),
                                      ),
                                    );
                                  } else {
                                    if (_model.calendarSelectedDay!.end <
                                        getCurrentTimestamp) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Debes de escoger un día posterior al de hoy',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 1800),
                                          backgroundColor: Color(0xFFF40409),
                                        ),
                                      );
                                    } else {
                                      if (_model.yourNameController2.text ==
                                              null ||
                                          _model.yourNameController2.text ==
                                              '') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Es obligatorio poner un número de WhatsApp',
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 1800),
                                            backgroundColor: Color(0xFFF40409),
                                          ),
                                        );
                                      } else {
                                        if (_model.ciudadValue1 == null ||
                                            _model.ciudadValue1 == '') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Debes de Escoger la Ciudad de Envío',
                                                style: GoogleFonts.getFont(
                                                  'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 1800),
                                              backgroundColor:
                                                  Color(0xFFF40409),
                                            ),
                                          );
                                        } else {
                                          if (_model.uploadedFileUrl == null ||
                                              _model.uploadedFileUrl == '') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Debes de Adjuntar un Comprobante de Pago',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 1800),
                                                backgroundColor:
                                                    Color(0xFFF40409),
                                              ),
                                            );
                                          } else {
                                            var orderRecordReference =
                                                OrderRecord.collection.doc();
                                            await orderRecordReference.set({
                                              ...createOrderRecordData(
                                                name: currentUserDisplayName,
                                                amount: pasareladePagoCartRecord
                                                    ?.amount,
                                                status: 'en espera',
                                                createdAt: getCurrentTimestamp,
                                                creator: currentUserReference,
                                                cart: pasareladePagoCartRecord
                                                    ?.reference,
                                                nombre: _model
                                                    .yourNameController1.text,
                                                numero: int.tryParse(_model
                                                    .yourNameController2.text),
                                                dni: int.tryParse(_model
                                                    .yourNameController3.text),
                                                direccion: _model
                                                    .yourNameController4.text,
                                                referencias: _model
                                                    .yourNameController5.text,
                                                ciudad:
                                                    _model.radioButtonValue1 ==
                                                            'Envío a Domicilio'
                                                        ? _model.ciudadValue1
                                                        : _model.horarioValue,
                                                pago: _model.uploadedFileUrl,
                                                cupon: _model
                                                    .yourNameController6.text,
                                                dedicatoria: _model
                                                    .dedicatoriaController.text,
                                                fecha: _model
                                                    .calendarSelectedDay?.end,
                                                numeroenvio: int.tryParse(_model
                                                    .numeroenvioController
                                                    .text),
                                                nombreenvio: _model
                                                    .nombreenvioController.text,
                                                horario: _model.horarioValue,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'selectedItems':
                                                      pasareladePagoCartRecord
                                                          ?.selectedItemsList,
                                                },
                                              ),
                                            });
                                            _model.orden = OrderRecord
                                                .getDocumentFromData({
                                              ...createOrderRecordData(
                                                name: currentUserDisplayName,
                                                amount: pasareladePagoCartRecord
                                                    ?.amount,
                                                status: 'en espera',
                                                createdAt: getCurrentTimestamp,
                                                creator: currentUserReference,
                                                cart: pasareladePagoCartRecord
                                                    ?.reference,
                                                nombre: _model
                                                    .yourNameController1.text,
                                                numero: int.tryParse(_model
                                                    .yourNameController2.text),
                                                dni: int.tryParse(_model
                                                    .yourNameController3.text),
                                                direccion: _model
                                                    .yourNameController4.text,
                                                referencias: _model
                                                    .yourNameController5.text,
                                                ciudad:
                                                    _model.radioButtonValue1 ==
                                                            'Envío a Domicilio'
                                                        ? _model.ciudadValue1
                                                        : _model.horarioValue,
                                                pago: _model.uploadedFileUrl,
                                                cupon: _model
                                                    .yourNameController6.text,
                                                dedicatoria: _model
                                                    .dedicatoriaController.text,
                                                fecha: _model
                                                    .calendarSelectedDay?.end,
                                                numeroenvio: int.tryParse(_model
                                                    .numeroenvioController
                                                    .text),
                                                nombreenvio: _model
                                                    .nombreenvioController.text,
                                                horario: _model.horarioValue,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'selectedItems':
                                                      pasareladePagoCartRecord
                                                          ?.selectedItemsList,
                                                },
                                              ),
                                            }, orderRecordReference);

                                            await currentUserReference!.update({
                                              ...mapToFirestore(
                                                {
                                                  'orderList':
                                                      FieldValue.arrayUnion([
                                                    _model.orden?.reference
                                                  ]),
                                                },
                                              ),
                                            });

                                            context.pushNamed(
                                              'finalizado',
                                              queryParameters: {
                                                'orden': serializeParam(
                                                  _model.orden,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'orden': _model.orden,
                                              },
                                            );
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              setState(() {});
                            },
                            text: 'Confirmar Pedido',
                            options: FFButtonOptions(
                              width: 170.0,
                              height: 100.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF9E0510),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Configuracion');
                              },
                              child: Icon(
                                Icons.settings_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 27.0,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('HOME');
                            },
                            child: Icon(
                              Icons.home,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 28.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 15.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Perfil');
                              },
                              child: Icon(
                                Icons.person,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 27.0,
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
        );
      },
    );
  }
}
