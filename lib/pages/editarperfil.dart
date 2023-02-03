import 'package:agroaquivr1/pages/home.dart';
import 'package:agroaquivr1/pages/home_page.dart';
import 'package:flutter/material.dart';

class EditarPerdilWidget extends StatefulWidget {
  const EditarPerdilWidget({Key? key}) : super(key: key);

  @override
  _EditarPerdilWidgetState createState() => _EditarPerdilWidgetState();
}

class _EditarPerdilWidgetState extends State<EditarPerdilWidget> {
  TextEditingController? customerPhonenumberController;
  TextEditingController? customerageController1;
  TextEditingController? customernameController;
  TextEditingController? customergenderController;
  TextEditingController? customerageController2;
  TextEditingController? customeremailController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    customerPhonenumberController = TextEditingController();
    customerageController1 = TextEditingController();
    customernameController = TextEditingController();
    customergenderController = TextEditingController();
    customerageController2 = TextEditingController();
    customeremailController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    customerPhonenumberController?.dispose();
    customerageController1?.dispose();
    customernameController?.dispose();
    customergenderController?.dispose();
    customerageController2?.dispose();
    customeremailController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFDBE2E7),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF73B175),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                        child: Container(
                          width: 90,
                          height: 90,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/perfil.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF73B175),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      child: Text('Editar Imagen'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                child: TextFormField(
                  controller: customernameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF73B175),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                child: TextFormField(
                  controller: customerageController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Cedula',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF73B175),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                child: TextFormField(
                  controller: customergenderController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Genero',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF73B175),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                child: TextFormField(
                  controller: customerageController2,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: 'Edad',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF73B175),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15),
                child: TextFormField(
                  controller: customerPhonenumberController,
                  obscureText: false,
                  decoration: InputDecoration(
                      labelText: 'Teléfono',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF73B175),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(14, 15, 0, 15)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF73B175),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    child: Text('Guardar Cambios'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
