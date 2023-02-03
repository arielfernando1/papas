import 'dart:developer';

import 'package:agroaquivr1/pages/unicapera.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import '../Clases/firestore_controller.dart';
import '../Clases/papas.dart';
import 'capiro.dart';
import 'superchola.dart';

class HomeWidget extends StatefulWidget {
  final firestore = Firestore();
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[50],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Image.asset(
                    'assets/images/logoo.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            constraints: const BoxConstraints(
              maxHeight: 250,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 199, 199, 199),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  blurRadius: 4,
                  color: Color(0x33000000),
                  offset: Offset(0, 2),
                )
              ],
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: PageView(
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        'assets/images/slider1.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/slider2.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/slider3.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      count: 3,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) {
                        pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: const smooth_page_indicator.ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Text(
            'Productos',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            width: double.infinity,
            height: 260,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: FutureBuilder<List<Papas>>(
              future: widget.firestore.listall(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final papas = snapshot.data;
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: papas!.length,
                    itemBuilder: (context, index) {
                      final papa = papas[index];
                      return Container(
                        color: Colors.white,
                        width: 200,
                        height: 200,
                        child: Card(
                            child: ListTile(
                          title: Text(papa.name),
                          subtitle: Text(papa.tipo),
                          onTap: () {
                            log('GO');
                          },
                        )),
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
