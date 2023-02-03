import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cartorden.dart';

class CapiroWidget extends StatefulWidget {
  const CapiroWidget({Key? key}) : super(key: key);

  @override
  _CapiroWidgetState createState() => _CapiroWidgetState();
}

class _CapiroWidgetState extends State<CapiroWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  int cantidad_gruesa = 0;
  int cantidad_pareja = 0;
  int cantidad_pequena = 0;
  String nombre = "Capiro";
  double precio_gruesa = 25;
  double precio_pareja = 10;
  double precio_pequena = 5;
  double r_gruesa = 0;
  double r_pareja = 0;
  double r_pequena = 0;
  double total = 0;

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          nombre,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: Text(
                            'Categoria',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ],
                      ),
// Codigo de categorias...

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/papa_capiro.jpg',
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              'Gruesa',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              '$precio_gruesa\$',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: 130,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF73B175),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_gruesa--;
                                                      if (cantidad_gruesa <=
                                                          0) {
                                                        cantidad_gruesa = 0;
                                                      }
                                                      print(cantidad_gruesa);
                                                    });
                                                  },
                                                ),
                                                Expanded(
                                                  child: Center(
                                                    child: Text(
                                                      cantidad_gruesa
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_gruesa++;
                                                      print(cantidad_gruesa);
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                if (cantidad_gruesa > 0) {
                                                  cantidad_gruesa = 0;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/papa_capiro.jpg',
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              'Pareja',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              '$precio_pareja\$',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: 130,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF73B175),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_pareja--;
                                                      if (cantidad_pareja <=
                                                          0) {
                                                        cantidad_pareja = 0;
                                                      }
                                                      print(cantidad_pareja);
                                                    });
                                                  },
                                                ),
                                                Expanded(
                                                  child: Center(
                                                    child: Text(
                                                      cantidad_pareja
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_pareja++;
                                                      print(cantidad_pareja);
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                if (cantidad_pareja > 0) {
                                                  cantidad_pareja = 0;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/papa_capiro.jpg',
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              'Pequeña',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 15, 0),
                                            child: Text(
                                              '$precio_pequena\$',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: 130,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF73B175),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                IconButton(
                                                  icon: Icon(Icons.remove),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_pequena--;
                                                      if (cantidad_pequena <=
                                                          0) {
                                                        cantidad_pequena = 0;
                                                      }
                                                      print(cantidad_pequena);
                                                    });
                                                  },
                                                ),
                                                Expanded(
                                                  child: Center(
                                                    child: Text(
                                                      cantidad_pequena
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.add),
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onPressed: () {
                                                    setState(() {
                                                      cantidad_pequena++;

                                                      print(cantidad_pequena);
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 18,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                if (cantidad_pequena > 0) {
                                                  cantidad_pequena = 0;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )

//
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF73B175),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0x430F1113),
                      offset: Offset(0, -2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  r_gruesa = precio_gruesa * cantidad_gruesa;
                                  r_pareja = precio_pareja * cantidad_pareja;
                                  r_pequena = precio_pequena * cantidad_pequena;
                                  total = r_gruesa + r_pareja + r_pequena;
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CartWidget(
                                          nombre,
                                          cantidad_gruesa,
                                          cantidad_pareja,
                                          cantidad_pequena,
                                          r_gruesa,
                                          r_pareja,
                                          r_pequena,
                                          total),
                                    ),
                                  );
                                },
                                label: Text(
                                  'Agregar compra',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                icon: Icon(
                                  Icons.shopping_cart,
                                  size: 24,
                                  color: Colors.white,
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
    );
  }
}
