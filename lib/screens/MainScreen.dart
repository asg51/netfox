import 'package:flutter/material.dart';
import 'package:netfox/screens/CustomerScreen.dart';

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainScreen();
  }

}

class _MainScreen extends State{
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
                     flex: 1,
                     child:GestureDetector(child: Icon(Icons.arrow_back),onTap: (){
                       Navigator.pop(context);
                     },),
                   ),
                   Flexible(
                     fit: FlexFit.tight,
                     flex: 8,
                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 15,top: 15,left: 8,right: 8),
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(color: Colors.white, spreadRadius: 3),
                           ],
                         ),
                         child: TextFormField(
                           cursorColor: Color.fromARGB(255, 240, 128, 19),
                             decoration:
                             InputDecoration(border: InputBorder.none,),
                             //validator: validateLastName,
                             onSaved: (String? value) {
                               // if (value != null) student.lastName = value;
                             },
                         ),
                       ),
                     ),
                   ),
                   Flexible(
                     fit: FlexFit.tight,
                     flex: 1,
                     child:Icon(Icons.search_rounded),
                   ),


                 ],
               ),
               ),
           ),
         ],
       ),
     body:
         Stack(
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
                       child:builderListView()
                     ),
                   ),
                 ),
               ),
             ),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Row(
                             children: [
                               Icon(Icons.home),
                               Text("Tümü"),
                             ],),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Row(
                             children: [
                               Icon(Icons.check,color: Colors.white,),
                               Text("Kurulu",style: TextStyle(color: Colors.white),),
                             ],),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Row(
                             children: [
                               Icon(Icons.close,color: Colors.white),
                               Text("Kapalı",style: TextStyle(color: Colors.white),),
                             ],),
                         ),
                       ],),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomRight:  Radius.circular(10), bottomLeft:  Radius.circular(10)),
                       color: Color.fromARGB(255, 240, 128, 19),
                       boxShadow: [
                         BoxShadow(color: Colors.white, spreadRadius: 3),
                       ],
                     ),
                   ),
                 ],),
             ),
           ],
         ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Color.fromARGB(255, 240, 128, 19),
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white,
       onTap: (value) {
         if(value==1)
         Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerScreen()));
       },
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

 Widget builderListView() {
 var list=  ListView.builder(
     scrollDirection: Axis.vertical,
     shrinkWrap: true,
     itemCount: 10,
     itemBuilder: (BuildContext context, int index) {
       if(index==0)
       return  Container(height: 28,);
       return Card(
         elevation: 8.0,
         color: Color.fromRGBO( 220, 108, 0,0.7),
         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
         child: Container(
           decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0)),
           child: ListTile(
             contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
             leading: Container(
               padding: EdgeInsets.only(right: 12.0),
               decoration: new BoxDecoration(
                   border: new Border(
                       right: new BorderSide(width: 1.0, color: Colors.white24))),
               child: Icon(Icons.lock_open, color: Colors.white,size: 40,),
             ),
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
   );
 return list;
 }



}