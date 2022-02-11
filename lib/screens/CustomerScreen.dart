import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomerScreen();
  }
}

class _CustomerScreen extends State {
  @override
  Widget build(BuildContext context) {
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
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 9,
                    child: Text(
                      "Servisler",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Flexible(fit: FlexFit.tight, flex: 1, child: Text("")),

                  /*Flexible(
                    fit: FlexFit.tight,
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 240, 128, 19),
                        boxShadow: [
                          BoxShadow(color: Color.fromARGB(255, 240, 128, 19), spreadRadius: 3),
                        ],
                      ),
                      child: DateTimeField(
                        initialValue: DateTime.now(),
                        resetIcon: null,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(border: InputBorder.none),
                        format: DateFormat("dd/MM/yyyy"),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100),
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.fromSwatch(
                                    primarySwatch: Colors.orange,
                                    primaryColorDark: Colors.orange,
                                    accentColor: Colors.orange,
                                  ),
                                  dialogBackgroundColor:Colors.white,
                                ),
                                child: child!,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child:Icon(Icons.navigate_next,color: Colors.black,),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 240, 128, 19),
                        boxShadow: [
                          BoxShadow(color: Color.fromARGB(255, 240, 128, 19), spreadRadius: 3),
                        ],
                      ),
                      child: DateTimeField(
                        initialValue: DateTime.now(),
                        resetIcon: null,

                        decoration: InputDecoration(border: InputBorder.none),
                        format: DateFormat("dd/MM/yyyy"),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100),
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.fromSwatch(
                                    primarySwatch: Colors.orange,
                                    primaryColorDark: Colors.orange,
                                    accentColor: Colors.orange,
                                  ),
                                  dialogBackgroundColor:Colors.white,
                                ),
                                child: child!,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child:Icon(Icons.search_rounded),
                  ),*/
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
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //       color: Colors.red,
            //       width: MediaQuery.of(context).size.width,
            //       height: 100,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Row(
            //                 children: [
            //                   Text("Başlangıç Tarihi: "),
            //                   Container(
            //                     height: 20,
            //                     width: 20,
            //                     padding: EdgeInsets.all(8.0),
            //                     decoration: BoxDecoration(
            //                         border: Border(bottom: BorderSide(color: Color.fromARGB(255, 240, 128, 19)))
            //                     ),
            //                     child: TextField(
            //                       decoration: InputDecoration(
            //                           border: InputBorder.none,
            //                           hintText: "Kullanıcı Adı",
            //                           hintStyle: TextStyle(color: Colors.grey[400])
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Text("Bitiş Tarihi:"),
            //             ],
            //           ),Icon(Icons.search_rounded)
            //         ],
            //       )),
            // ),
            Container(
              height: 70,
              color: Color.fromARGB(255, 240, 128, 19),
              child: Row(
                children: [
                  Flexible(child: Container(),fit: FlexFit.tight,flex: 1,),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 240, 128, 19),
                        boxShadow: [
                          BoxShadow(color: Color.fromARGB(255, 240, 128, 19), spreadRadius: 3),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DateTimeField(
                          initialValue: DateTime.now().add(Duration(days: -1)),
                          resetIcon: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(border: InputBorder.none),
                          format: DateFormat("dd/MM/yyyy"),
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                                context: context,
                                firstDate: DateTime(1900),
                                initialDate: currentValue ?? DateTime.now(),
                                lastDate: DateTime(2100),
                              builder: (context, child) {
                                return Theme(
                                  data: ThemeData.light().copyWith(
                                    colorScheme: ColorScheme.fromSwatch(
                                      primarySwatch: Colors.orange,
                                      primaryColorDark: Colors.orange,
                                      accentColor: Colors.orange,
                                    ),
                                    dialogBackgroundColor:Colors.white,
                                  ),
                                  child: child!,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child:Icon(Icons.navigate_next,color: Colors.black,),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 240, 128, 19),
                        boxShadow: [
                          BoxShadow(color: Color.fromARGB(255, 240, 128, 19), spreadRadius: 3),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DateTimeField(
                          initialValue: DateTime.now(),
                          resetIcon: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(border: InputBorder.none),
                          format: DateFormat("dd/MM/yyyy"),
                          onShowPicker: (context, currentValue) {
                            return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100),
                              builder: (context, child) {
                                return Theme(
                                  data: ThemeData.light().copyWith(
                                    colorScheme: ColorScheme.fromSwatch(
                                      primarySwatch: Colors.orange,
                                      primaryColorDark: Colors.orange,
                                      accentColor: Colors.orange,
                                    ),
                                    dialogBackgroundColor:Colors.white,
                                  ),
                                  child: child!,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flexible(
                      fit: FlexFit.tight,
                      flex: 4,
                      child:GestureDetector(child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Color.fromARGB(255, 240, 128, 19), spreadRadius: 3),
                            ],
                          ),child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Icon(Icons.search_rounded,color: Colors.black,size: 31,),
                          ))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 6),
                  child: Container(
                    child: RefreshIndicator(
                      onRefresh: () async {},
                      color: Color.fromARGB(255, 240, 128, 19),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 10,
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

                                subtitle: Column(
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(" Intermediate",
                                            style:
                                                TextStyle(color: Colors.white))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(" Intermediate",
                                            style:
                                                TextStyle(color: Colors.white)))
                                  ],
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 240, 128, 19),
        selectedItemColor: Colors.black,
        currentIndex: 1,
        unselectedItemColor: Colors.white,
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
