import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomerScreen();
  }

}

class _CustomerScreen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        actions: [
          Expanded(
            //    flex: 1,
            // fit: FlexFit.loose,
            child: Container(
              color:  Color.fromARGB(255, 240, 128, 19),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child:GestureDetector(child: Icon(Icons.arrow_back),onTap: (){
                      Navigator.pop(context);
                    },),
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
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    body: Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.passthrough,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      overflow: Overflow.visible,
      children: [

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 6,bottom: 6),
            child: Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  image: new DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: new AssetImage('assets/images/icon-9.png')
                  )
              ),
              child:  Container(
                child: RefreshIndicator(onRefresh:  () async {
                },
                  color: Color.fromARGB(255, 240, 128, 19),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 8.0,
                        color: Color.fromRGBO( 220, 108, 0,0.7),
                        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                        child: Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),

                            title: Text(
                              "Introduction to Driving",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            //, subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                            subtitle: Column(
                              children: <Widget>[
                                Align(alignment: Alignment.centerLeft,child: Text(" Intermediate", style: TextStyle(color: Colors.white))),
                                Align(alignment: Alignment.centerRight, child: Text(" Intermediate", style: TextStyle(color: Colors.white)))
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 240, 128, 19),
        selectedItemColor: Colors.black,
        currentIndex: 1,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              title: Text("Müşteriler"),
              icon: Icon(Icons.people)
          ),BottomNavigationBarItem(
              title: Text("Servisler"),
              icon: Icon(Icons.settings_outlined)
          ),BottomNavigationBarItem(
              title: Text("Sinyal Akışı"),
              icon: Icon(Icons.wifi)
          )
        ],
      ),
    );

  }



}