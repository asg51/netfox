import 'package:flutter/material.dart';

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
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Row(
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
       Expanded(
         child: ListView.builder(

         itemBuilder: (BuildContext context, int index) {
     return ListTile(title: Text("aaa"),);
         },
           itemCount: 20,
         ),
       )
       ],
     ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Color.fromARGB(255, 240, 128, 19),
       selectedItemColor: Colors.black,
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