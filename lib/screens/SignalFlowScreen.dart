import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netfox/screens/CustomerScreen.dart';
import 'package:netfox/screens/MainScreen.dart';

import '../main.dart';

class SignalFlowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignalFlowScreen();
  }
}

class _SignalFlowScreen extends State {
  @override
  Widget build(BuildContext context) {
    double lastOffset = 0;
    ScrollController _scrollController = new ScrollController();
    _scrollController.addListener(() {
      lastOffset = _scrollController.position.pixels;
      // print(_scrollController.position.pixels);
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 100.0) {
        // loadMoreContent();
        print("asdasdasda");
      }
    });
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            //    flex: 1,
            // fit: FlexFit.loose,
            child: Container(
              color: Color.fromARGB(255, 240, 128, 19),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 9,
                    child: Text(
                      "Sinyal Akışı",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Flexible(fit: FlexFit.tight, flex: 1, child: Text("")),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            image: new DecorationImage(
                fit: BoxFit.scaleDown,
                image: new AssetImage('assets/images/icon-9.png'))),
        child: Column(
          children: [
            Container(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 6),
                  child: Container(
                    child: RefreshIndicator(
                      onRefresh: () async {},
                      color: Color.fromARGB(255, 240, 128, 19),
                      child: GlowingOverscrollIndicator(
                        color: Colors.orangeAccent,
                        axisDirection: AxisDirection.down,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 10,
                          controller: _scrollController,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              elevation: 8.0,
                              color: Color.fromRGBO(220, 108, 0, 0.7),
                              margin: new EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 0)),
                                child: ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10.0),

                                  title: Text(
                                    "Introduction to Driving",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  //, subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                                  subtitle: Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(" Intermediate",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 240, 128, 19),
        selectedItemColor: Colors.black,
        currentIndex: 2,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          if (value == 0)
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
                (route) => false);
          else if (value == 1)
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => CustomerScreen()),
                (route) => false);
          else if (value == 2)
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignalFlowScreen()),
                (route) => false);
        },
        items: [
          BottomNavigationBarItem(
              title: Text("Müşteriler"), icon: Icon(Icons.people)),
          BottomNavigationBarItem(
              title: Text("Servisler"), icon: Icon(Icons.settings_outlined)),
          BottomNavigationBarItem(
              title: Text("Sinyal Akışı"), icon: Icon(Icons.wifi))
        ],
      ),
    );
  }
}
