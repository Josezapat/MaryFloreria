import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categoria_libros_model.dart';
export 'categoria_libros_model.dart';

class CategoriaLibrosWidget extends StatefulWidget {
  const CategoriaLibrosWidget({super.key});

  @override
  State<CategoriaLibrosWidget> createState() => _CategoriaLibrosWidgetState();
}

class _CategoriaLibrosWidgetState extends State<CategoriaLibrosWidget>
    with TickerProviderStateMixin {
  late CategoriaLibrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriaLibrosModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pop();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: StreamBuilder<List<CartRecord>>(
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
                        List<CartRecord> containerCartRecordList =
                            snapshot.data!;
                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final containerCartRecord =
                            containerCartRecordList.isNotEmpty
                                ? containerCartRecordList.first
                                : null;
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Carrito');
                          },
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Visibility(
                              visible: containerCartRecord != null,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Ver Carrito',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 28.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Buscador');
                    },
                    child: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(-1.0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: false,
                      isScrollable: true,
                      labelStyle: FlutterFlowTheme.of(context).titleMedium,
                      unselectedLabelStyle: TextStyle(),
                      labelColor: FlutterFlowTheme.of(context).primary,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor: FlutterFlowTheme.of(context).accent1,
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderWidth: 2.0,
                      borderRadius: 12.0,
                      elevation: 0.0,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      buttonMargin:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 0.0),
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      tabs: [
                        Tab(
                          text: 'Autores',
                        ),
                        Tab(
                          text: 'Diccionarios Bíblicos',
                        ),
                        Tab(
                          text: 'Devocionales',
                        ),
                        Tab(
                          text: 'Escuela Dominical',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (i) async {
                        [
                          () async {},
                          () async {},
                          () async {},
                          () async {}
                        ][i]();
                      },
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowChoiceChips(
                                        options: [
                                          ChipData('A. W. Tozer'),
                                          ChipData('Alex Sampedro'),
                                          ChipData('Alfonso Ropero'),
                                          ChipData('Andrés Panasiuk'),
                                          ChipData('Armando Alducin'),
                                          ChipData('Benny Hinn'),
                                          ChipData('Billy Graham'),
                                          ChipData('C. S. Lewis'),
                                          ChipData('Cash Luna'),
                                          ChipData('Cesar Vidal'),
                                          ChipData('Charles Spurgeon'),
                                          ChipData('Charles Stanley'),
                                          ChipData('Charles Swindoll'),
                                          ChipData('Cindy Jacobs'),
                                          ChipData('Dannah Gresh'),
                                          ChipData('Dante Gebel'),
                                          ChipData('David Hormachea'),
                                          ChipData('David Jeremiah'),
                                          ChipData('David Wilkerson'),
                                          ChipData('Deborah Smith'),
                                          ChipData('Derek Prince'),
                                          ChipData('Don Colbert'),
                                          ChipData('Ed cole'),
                                          ChipData('Ed Young'),
                                          ChipData('Elizabeth George'),
                                          ChipData('Erwin Lutzer'),
                                          ChipData('Evis Carballosa'),
                                          ChipData('Francine Rivers'),
                                          ChipData('Gary Chapman'),
                                          ChipData('Guillermo Aguayo'),
                                          ChipData('Guillermo Maldonado'),
                                          ChipData('Henry Cloud'),
                                          ChipData('Itiel Arroyo'),
                                          ChipData('James Dobson'),
                                          ChipData('Jeffrey De León'),
                                          ChipData('Jentezen Franklin'),
                                          ChipData('Jim George'),
                                          ChipData('Joel Osteen'),
                                          ChipData('John Bevere'),
                                          ChipData('John Bunyan'),
                                          ChipData('John Eckhardt'),
                                          ChipData('John Eldredge'),
                                          ChipData('John Hagee'),
                                          ChipData('John Macarthur'),
                                          ChipData('John Maxwell'),
                                          ChipData('John Piper'),
                                          ChipData('John Stott'),
                                          ChipData('Jonathan Cahn'),
                                          ChipData('Joseph Prince'),
                                          ChipData('Josh McDowell'),
                                          ChipData('Josué Yrion'),
                                          ChipData('Joyce Meyer'),
                                          ChipData('June Hunt'),
                                          ChipData('Justo González'),
                                          ChipData('Kathryn Kuhlman'),
                                          ChipData('Kittim Silva'),
                                          ChipData('Lee Strobel'),
                                          ChipData('Lisa Bevere'),
                                          ChipData('Lucas Leys'),
                                          ChipData('Luis Palau'),
                                          ChipData('Marcos Witt'),
                                          ChipData('Mary Baxter'),
                                          ChipData('Max Lucado'),
                                          ChipData('Miguel Núñez'),
                                          ChipData('Myles Munroe'),
                                          ChipData('Nancy DeMoss'),
                                          ChipData('Neil Anderson'),
                                          ChipData('Omayra Font'),
                                          ChipData('Paul David Tripp'),
                                          ChipData('Perry Stone'),
                                          ChipData('Quin Sherrer'),
                                          ChipData('R. C. SPROUL'),
                                          ChipData('Randy Alcorn'),
                                          ChipData('Ravi Zacharias'),
                                          ChipData('Rebecca Brown'),
                                          ChipData('Reinhard Bonnke'),
                                          ChipData('Rey Matos'),
                                          ChipData('Rick Warren'),
                                          ChipData('Robert Barriger'),
                                          ChipData('Roberts Liardon'),
                                          ChipData('Roger Campbell'),
                                          ChipData('Samuel Pagan'),
                                          ChipData('Samuel Vila'),
                                          ChipData('Sarah Young'),
                                          ChipData('Sharon Jaynes'),
                                          ChipData('Sheri Rose Shepherd'),
                                          ChipData('Sixto Porras'),
                                          ChipData('Stephen Kendrick'),
                                          ChipData('Stormie Omartian'),
                                          ChipData('T. D. Jakes'),
                                          ChipData('Tim LaHaye'),
                                          ChipData('Timothy Keller'),
                                          ChipData('Yesenia Then'),
                                          ChipData('Yiye Avila'),
                                          ChipData('Yonggi Cho'),
                                          ChipData('Watchman Nee')
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.choiceChipsValue1 =
                                                val?.firstOrNull),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 18.0,
                                          elevation: 4.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconSize: 18.0,
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        chipSpacing: 20.0,
                                        rowSpacing: 25.0,
                                        multiselect: false,
                                        initialized:
                                            _model.choiceChipsValue1 != null,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController1 ??=
                                            FormFieldController<List<String>>(
                                          ['A. W. Tozer'],
                                        ),
                                        wrapped: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 635.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 1000.0,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: PageView(
                                          controller: _model
                                                  .pageViewController1 ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: StreamBuilder<
                                                  List<ItemsRecord>>(
                                                stream: queryItemsRecord(
                                                  queryBuilder: (itemsRecord) =>
                                                      itemsRecord
                                                          .where(
                                                            'ListaCategorias',
                                                            arrayContains: _model
                                                                .choiceChipsValue1,
                                                          )
                                                          .where(
                                                            'on_sale',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('name'),
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ItemsRecord>
                                                      listViewItemsRecordList =
                                                      snapshot.data!;
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewItemsRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewItemsRecord =
                                                          listViewItemsRecordList[
                                                              listViewIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'itemDetail',
                                                              queryParameters: {
                                                                'itemParametro':
                                                                    serializeParam(
                                                                  listViewItemsRecord,
                                                                  ParamType
                                                                      .Document,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'itemParametro':
                                                                    listViewItemsRecord,
                                                              },
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 200.0,
                                                            height: 330.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                      child: Image
                                                                          .network(
                                                                        listViewItemsRecord
                                                                            .image,
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            250.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                                                                              child: Text(
                                                                                listViewItemsRecord.name,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            175.0,
                                                                        height:
                                                                            50.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                                  child: Text(
                                                                                    formatNumber(
                                                                                      listViewItemsRecord.price,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.automatic,
                                                                                      currency: 's/',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          fontSize: 18.0,
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
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator
                                              .SmoothPageIndicator(
                                            controller: _model
                                                    .pageViewController1 ??=
                                                PageController(initialPage: 0),
                                            count: 1,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController1!
                                                  .animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: smooth_page_indicator
                                                .ExpandingDotsEffect(
                                              expansionFactor: 13.0,
                                              spacing: 8.0,
                                              radius: 16.0,
                                              dotWidth: 16.0,
                                              dotHeight: 8.0,
                                              dotColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              activeDotColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              paintStyle: PaintingStyle.fill,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Diccionarios Bíblicos')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue2 =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          chipSpacing: 20.0,
                                          rowSpacing: 15.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsValue2 != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController2 ??=
                                              FormFieldController<List<String>>(
                                            ['Diccionarios Bíblicos'],
                                          ),
                                          wrapped: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 800.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1087.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController2 ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: StreamBuilder<
                                                    List<ItemsRecord>>(
                                                  stream: queryItemsRecord(
                                                    queryBuilder:
                                                        (itemsRecord) =>
                                                            itemsRecord
                                                                .where(
                                                                  'ListaCategorias',
                                                                  arrayContains:
                                                                      _model
                                                                          .choiceChipsValue2,
                                                                )
                                                                .where(
                                                                  'on_sale',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'name'),
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
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ItemsRecord>
                                                        listViewItemsRecordList =
                                                        snapshot.data!;
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewItemsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewItemsRecord =
                                                            listViewItemsRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'itemDetail',
                                                                queryParameters:
                                                                    {
                                                                  'itemParametro':
                                                                      serializeParam(
                                                                    listViewItemsRecord,
                                                                    ParamType
                                                                        .Document,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  'itemParametro':
                                                                      listViewItemsRecord,
                                                                },
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 200.0,
                                                              height: 330.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                        child: Image
                                                                            .network(
                                                                          listViewItemsRecord
                                                                              .image,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              250.0,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                                                                                child: Text(
                                                                                  listViewItemsRecord.name,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              175.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, -1.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                                    child: Text(
                                                                                      formatNumber(
                                                                                        listViewItemsRecord.price,
                                                                                        formatType: FormatType.decimal,
                                                                                        decimalType: DecimalType.automatic,
                                                                                        currency: 's/',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            fontSize: 18.0,
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
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController2 ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 1,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model
                                                    .pageViewController2!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 13.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 8.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                paintStyle: PaintingStyle.fill,
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowChoiceChips(
                                          options: [ChipData('Devocionales')],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue3 =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          chipSpacing: 20.0,
                                          rowSpacing: 15.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsValue3 != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController3 ??=
                                              FormFieldController<List<String>>(
                                            ['Devocionales'],
                                          ),
                                          wrapped: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 800.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1087.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController3 ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 807.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: StreamBuilder<
                                                    List<ItemsRecord>>(
                                                  stream: queryItemsRecord(
                                                    queryBuilder:
                                                        (itemsRecord) =>
                                                            itemsRecord
                                                                .where(
                                                                  'ListaCategorias',
                                                                  arrayContains:
                                                                      _model
                                                                          .choiceChipsValue3,
                                                                )
                                                                .where(
                                                                  'on_sale',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'name'),
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
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ItemsRecord>
                                                        listViewItemsRecordList =
                                                        snapshot.data!;
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewItemsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewItemsRecord =
                                                            listViewItemsRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'itemDetail',
                                                                queryParameters:
                                                                    {
                                                                  'itemParametro':
                                                                      serializeParam(
                                                                    listViewItemsRecord,
                                                                    ParamType
                                                                        .Document,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  'itemParametro':
                                                                      listViewItemsRecord,
                                                                },
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 200.0,
                                                              height: 330.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                        child: Image
                                                                            .network(
                                                                          listViewItemsRecord
                                                                              .image,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              250.0,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                                                                                child: Text(
                                                                                  listViewItemsRecord.name,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              175.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, -1.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                                    child: Text(
                                                                                      formatNumber(
                                                                                        listViewItemsRecord.price,
                                                                                        formatType: FormatType.decimal,
                                                                                        decimalType: DecimalType.automatic,
                                                                                        currency: 's/',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            fontSize: 18.0,
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
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController3 ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 1,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model
                                                    .pageViewController3!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 13.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 8.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                paintStyle: PaintingStyle.fill,
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Escuela Dominical'),
                                            ChipData('Para Colorear')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValue4 =
                                                  val?.firstOrNull),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 18.0,
                                            elevation: 4.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          chipSpacing: 20.0,
                                          rowSpacing: 15.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsValue4 != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController4 ??=
                                              FormFieldController<List<String>>(
                                            ['Escuela Dominical'],
                                          ),
                                          wrapped: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 800.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1087.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController4 ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 807.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: StreamBuilder<
                                                    List<ItemsRecord>>(
                                                  stream: queryItemsRecord(
                                                    queryBuilder:
                                                        (itemsRecord) =>
                                                            itemsRecord
                                                                .where(
                                                                  'ListaCategorias',
                                                                  arrayContains:
                                                                      _model
                                                                          .choiceChipsValue4,
                                                                )
                                                                .where(
                                                                  'on_sale',
                                                                  isEqualTo:
                                                                      true,
                                                                )
                                                                .orderBy(
                                                                    'name'),
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
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ItemsRecord>
                                                        listViewItemsRecordList =
                                                        snapshot.data!;
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewItemsRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewItemsRecord =
                                                            listViewItemsRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'itemDetail',
                                                                queryParameters:
                                                                    {
                                                                  'itemParametro':
                                                                      serializeParam(
                                                                    listViewItemsRecord,
                                                                    ParamType
                                                                        .Document,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  'itemParametro':
                                                                      listViewItemsRecord,
                                                                },
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 200.0,
                                                              height: 330.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                        child: Image
                                                                            .network(
                                                                          listViewItemsRecord
                                                                              .image,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              250.0,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 0.0),
                                                                                child: Text(
                                                                                  listViewItemsRecord.name,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              175.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(1.0, -1.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                                    child: Text(
                                                                                      formatNumber(
                                                                                        listViewItemsRecord.price,
                                                                                        formatType: FormatType.decimal,
                                                                                        decimalType: DecimalType.automatic,
                                                                                        currency: 's/',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            fontSize: 18.0,
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
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController4 ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 1,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model
                                                    .pageViewController4!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 13.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 8.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                paintStyle: PaintingStyle.fill,
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
                        ),
                      ],
                    ),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
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
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
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
                            color: FlutterFlowTheme.of(context).secondaryText,
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
  }
}
