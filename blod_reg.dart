import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:sylheti/groups/a+.dart';
import 'package:sylheti/groups/a-.dart';
import 'package:sylheti/groups/ab+.dart';
import 'package:sylheti/groups/ab-.dart';
import 'package:sylheti/groups/b+.dart';
import 'package:sylheti/groups/b-.dart';
import 'package:sylheti/groups/o+.dart';
import 'package:sylheti/groups/o-.dart';
import 'package:shared_preferences/shared_preferences.dart';

ButtonStyle btnS=ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
//    foregroundColor: Colors.white,
    elevation: 3,shadowColor: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2)), )
);

Future<void> saveData(String num, String val) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(num, val);
}


class Doner extends StatefulWidget {
  @override
  State<Doner> createState() => _DonerState();
}

class _DonerState extends State<Doner> {
  @override
  Widget build(BuildContext context) {
    final nC = TextEditingController();
    final lC = TextEditingController();
    final cC = TextEditingController();
    final passC=TextEditingController();
    String drpVal="A+";
    String name='';
    String loc='';
    String con='';
    String pass='';
    String drpAv="Available";
    return Scaffold(
        appBar: AppBar(
          title: Text("Please provide your info to continue"),
        ),
        body:  ListView(
          padding: EdgeInsets.only(left: 2,right: 2,top:20),
          children: [
            Padding(padding: EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 15),child: TextField(
              controller: nC,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 3,left: 5,right: 5),child: TextField(
              controller: cC,
              decoration: InputDecoration(
                labelText: "Phone number",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 2,left: 5,right: 5),
                child:DropdownButtonFormField(
                  value: drpVal,
                  onChanged: (val){
                      drpVal=val as String;
                  },
                  decoration: InputDecoration(
                      labelText: "Blood group",
                      prefixIcon: Icon(Icons.bloodtype_outlined,color: Colors.red,),
                      border: UnderlineInputBorder()
                  ),
//     underline: Container(height: 2,color: Colors.lightBlue,),
                  items: [
                    DropdownMenuItem(child: Text("A+"),value: 'A+',
                    ),
                    DropdownMenuItem(child: Text("A-"),value: 'A-',
                    ),
                    DropdownMenuItem(child: Text("B+"),value: 'B+',
                    ),
                    DropdownMenuItem(child: Text("B-"),value: 'B-',
                    ),
                    DropdownMenuItem(child: Text("AB+"),value: 'Ab+',
                    ),
                    DropdownMenuItem(child: Text("Ab-"),value: 'Ab-',
                    ),
                    DropdownMenuItem(child: Text("O+"),value: 'O+',
                    ),
                    DropdownMenuItem(child: Text("O-"),value: 'O-',
                    ),
                  ],
                  icon: Icon(Icons.arrow_circle_down_sharp,),
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 15,left: 5,right: 5),
                child: DropdownButtonFormField(
                  value: drpAv,
                  onChanged: (val){
                      drpAv=val as String;
                  },
                  decoration: InputDecoration(
                      labelText: "Available For Donate?",
                      prefixIcon: Icon(Icons.person_add_alt_outlined,color: Colors.green,),
                      border: UnderlineInputBorder()
                  ),
//     underline: Container(height: 2,color: Colors.lightBlue,),
                  items: [
                    DropdownMenuItem(child: Text("Available"),value: 'Available',
                    ),
                    DropdownMenuItem(child: Text("Not Available"),value: 'Not Available',
                    ),
                  ],
                  icon: Icon(Icons.arrow_circle_down_sharp,),
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 15,left: 5,right: 5),child: TextField(
              controller: lC,
              decoration: InputDecoration(
                labelText: "Location",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5,left: 5,right: 5),child: TextField(
              controller: passC,
              decoration: InputDecoration(
                helperText: "We will use it for validating you in future",
                labelText: "Who is your favourite person",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: btnS,
                      onPressed: () {
                        name=nC.text;
                        loc=lC.text;
                        con=cC.text;
                        pass=passC.text;
                        createUsr(nam: name,con: con,group: drpVal,valid: drpAv,loc: loc,pass: pass);
                        saveData("num", con);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>AllDoner()));
                      },
                      child: Text("Submit",),
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}

Future createUsr({
  required String nam,
  required String con,
  required String group,
  required String valid,
  required String loc,
  required String pass,
  }) async {
  final docUsr= FirebaseFirestore.instance.collection('users').doc(con);
  final json={
    'Name':nam,
    'Contact':con,
    'Blood Group':group,
    'Available?':valid,
    'Area':loc,
    'Pass':pass,
  };
  await docUsr.set(json);
}
class AllDoner extends StatefulWidget {
  @override
  State<AllDoner> createState() => _AllDonerState();
}

class _AllDonerState extends State<AllDoner> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Doner List"),
          actions: [
           TextButton(onPressed: (){ Navigator.of(context).push(
               MaterialPageRoute(builder: (context)=>Validation()));},
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.edit,color: Colors.white,size: 15,),
               Text("Edit ",style: TextStyle(color: Colors.white),),
             ],
           ))
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "A+",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "A-",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "B+",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "B-",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "Ab+",),
              Tab(icon:Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "Ab-",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "O+",),
              Tab(icon: Icon(Icons.bloodtype_sharp,color: Colors.red,),text: "O-",),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Apos(),
            Aneg(),
            Bpos(),
            Bneg(),
            AbPos(),
            AbNeg(),
            Opos(),
            Oneg()
          ],
        ),
      ),
    );
  }
}
class Validation extends StatefulWidget {
  @override
  State<Validation> createState() => _ValidationState();
}
final numC=TextEditingController();
final pC=TextEditingController();
class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Go to your info")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Padding(padding: EdgeInsets.only(bottom: 15,left: 5,right: 5),child: TextField(
              controller: numC,
              decoration: InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
        ),
      Padding(padding: EdgeInsets.only(bottom: 5,left: 5,right: 5),child: TextField(
              controller: pC,
              decoration: InputDecoration(
                labelText: "Who is your Favourite person",
                border: OutlineInputBorder(),
              ),
            ),
      ),
           TextButton(onPressed: ()async{
             String fav = await getname(numC.text);
           if(pC.text==fav){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Update(doc: numC.text,)));
           }
             else{
                  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Not Matched'),
                      content:  Text('Try again'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Close the dialog
                            // Additional logic for AlertDialog 1
                          },
                          child: Center(child: Text('Retry')),
                        ),
                      ],
                    );
                  }
               );
             }
           }, child: Text("Validate"))
          ],
        ),
      ),
    );
  }

  Future<String> getname(String num) async {
    DocumentSnapshot ds =
    await FirebaseFirestore.instance.collection('users').doc(num).get();
    // Cast the data to Map<String, dynamic>
    Map<String, dynamic>? data = ds.data() as Map<String, dynamic>?;

    // Check if the data is not null and contains the 'Pass' field
    if (data != null && data.containsKey('Pass')) {
      return data['Pass'] as String;
    } else {
      // Handle the case when 'Pass' field is missing or data is null
      return 'Pass not found';
    }
  }
}
class Update extends StatelessWidget {
  String doc;
  Update({required this.doc});
  @override
  Widget build(BuildContext context) {
    final nC = TextEditingController();
    final lC = TextEditingController();
    final cC = TextEditingController();
    final passC=TextEditingController();
    String drpVal="A+";
    String drpAv="Available";
    void getC(String num) async {
      DocumentSnapshot ds =
      await FirebaseFirestore.instance.collection('users').doc(num).get();
      // Cast the data to Map<String, dynamic>
      Map<String, dynamic>? data = ds.data() as Map<String, dynamic>?;
      // Check if the data is not null and contains the 'Pass' field
      if (data != null && data.containsKey('Pass')) {
        nC.text=data['Name'];
        lC.text=data['Area'];
        drpVal=data['Blood Group'];
        cC.text=data['Contact'];
        passC.text=data['Pass'];
      }
    }
    getC(doc);
    String name='';
    String loc='';
    String con='';
    String pass='';
    return Scaffold(
        appBar: AppBar(
          title: Text("Provide your info to Update"),
        ),
        body:  ListView(
          padding: EdgeInsets.only(left: 2,right: 2,top:20),
          children: [
            Padding(padding: EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 15),child: TextField(
              controller: nC,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5,left: 5,right: 5),child: TextField(
              controller: cC,
              decoration: InputDecoration(
                enabled: false,
                labelText: "Phone number",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 2,left: 5,right: 5),
                child:DropdownButtonFormField(
                  value: drpVal,
                  onChanged: (val){
                    drpVal=val as String;
                  },
                  decoration: InputDecoration(
                      labelText: "Blood group",
                      prefixIcon: Icon(Icons.bloodtype_outlined,color: Colors.red,),
                      border: UnderlineInputBorder()
                  ),
//     underline: Container(height: 2,color: Colors.lightBlue,),
                  items: [
                    DropdownMenuItem(child: Text("A+"),value: 'A+',
                    ),
                    DropdownMenuItem(child: Text("A-"),value: 'A-',
                    ),
                    DropdownMenuItem(child: Text("B+"),value: 'B+',
                    ),
                    DropdownMenuItem(child: Text("B-"),value: 'B-',
                    ),
                    DropdownMenuItem(child: Text("AB+"),value: 'Ab+',
                    ),
                    DropdownMenuItem(child: Text("Ab-"),value: 'Ab-',
                    ),
                    DropdownMenuItem(child: Text("O+"),value: 'O+',
                    ),
                    DropdownMenuItem(child: Text("O-"),value: 'O-',
                    ),
                  ],
                  icon: Icon(Icons.arrow_circle_down_sharp,),
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 15,left: 5,right: 5),
                child: DropdownButtonFormField(
                  value: drpAv,
                  onChanged: (val){
                    drpAv=val as String;
                  },
                  decoration: InputDecoration(
                      labelText: "Available For Donate?",
                      prefixIcon: Icon(Icons.person_add_alt_outlined,color: Colors.green,),
                      border: UnderlineInputBorder()
                  ),
//     underline: Container(height: 2,color: Colors.lightBlue,),
                  items: [
                    DropdownMenuItem(child: Text("Available"),value: 'Available',
                    ),
                    DropdownMenuItem(child: Text("Not Available"),value: 'Not Available',
                    ),
                  ],
                  icon: Icon(Icons.arrow_circle_down_sharp,),
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 15,left: 5,right: 5),child: TextField(
              controller: lC,
              decoration: InputDecoration(
                labelText: "Location",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5,left: 5,right: 5),child: TextField(
              controller: passC,
              decoration: InputDecoration(
                helperText: "We will use it for validating you in future",
                labelText: "Who is your favourite person",
                border: OutlineInputBorder(),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: btnS,
                      onPressed: () {
                        name=nC.text;
                        loc=lC.text;
                        con=cC.text;
                        pass=passC.text;
                        var collection = FirebaseFirestore.instance.collection('users');
                        collection
                            .doc(con)
                            .update({
                          'Name' : '$name',
                          'Contact' : '$con',
                          'Blood Group' : '$drpVal',
                          'Available?' : '$drpAv',
                          'Area' : '$loc',
                          'Pass' : '$pass',
                        })
                            .then((_) => print('Success'))
                            .catchError((error) => print('Failed: $error'));
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>AllDoner()));
                      },
                      child: Text("Update",),
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}
class Blood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donation"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      offset: Offset(2, 4)),
                ],
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.person_add_alt_1_outlined,),iconSize: 100,onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Doner()));
                    },),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Doner()));
                    }, child: Text("Register as Doner"),style: btnS,
                    )
                  ],
                ),
              )
          ),
          Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      offset: Offset(2, 4)),
                ],
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.how_to_reg,),iconSize: 100,onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>AllDoner()));
                    },),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>AllDoner()));
                    }, child: Text("Doner List"),
                    style: btnS,
                    )
                  ],
                ),
              )
          ),
        ],
        ),
      ),
    );
  }
}




