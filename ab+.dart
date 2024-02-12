import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AbPos extends StatefulWidget {

  @override
  State<AbPos> createState() => _AbPosState();
}
bool av(String val){
  if(val=="Available"){
    return true;
  }
  else{
    return false;
  }
}
class _AbPosState extends State<AbPos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AB+ Doner"),),
        body: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('users').orderBy('Available?',descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                List<Widget> userWidgets = [];
                if (snapshot.hasData) {
                  final users = snapshot.data?.docs.reversed.toList();
                  for (var user in users!) {
                    if (user['Blood Group'] == "Ab+") {
                      final userWidget =
                      Container(
                        width: MediaQuery.of(context).size.width * .95,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.white, width: 5),
                            )),
                        // height:  MediaQuery.of(context).size.width * .34,
                        child: ListTile(
                          enabled: av(user['Available?']),
                          title: Text(user['Name']),
                          subtitle: Text(user['Area'] +
                              ' (' + user['Available?'] + ')'),
                          trailing:  Icon(Icons.call),
                          onTap: () async {
                            await launch('tel:' + user['Contact']);
                          },
                          tileColor: Colors.lightBlueAccent.shade100,
                          iconColor: Colors.deepOrange,
                          hoverColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      );
                      userWidgets.add(userWidget);
                    }
                  }
                }
                return ListView(
                    children: userWidgets,
                  );

              }),
        )
    );
  }
}
