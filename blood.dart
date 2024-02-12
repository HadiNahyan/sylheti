import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Blood extends StatefulWidget {
  @override
  _BloodState createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  @override
  Widget build(BuildContext context) {
    Widget grp(String nam,String num){
      return ListTile(
        contentPadding: EdgeInsets.only(left: 20,right: 10),
       title: Text(nam,style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold,fontSize: 20),),
       trailing: Icon(Icons.call),
        onTap: ()async{
          await launch(num);
        },
      );
    }
    String ap="A+";
    String an="A-";
    String bp="B+";
    String bn="B-";
    String abp="Ab+";
    String abn="Ab-";
    String op="O+";
    String on="O-";
    List<Widget> aPos=[
      grp("Md. Hadi Un Nahyan Chowdhury", "tel:01828526145"),Divider(),
      grp("Rashed Ahmed", "tel:01796609229"),Divider(),
      grp("Jayed Ahmed Jadu", "tel:01773817846"),Divider(),
      grp("Tawfiq Ahmed Chowdhury", "tel:01688352211"),Divider(),
      grp("M Saifur Rahman", "tel:01878071629"),Divider(),
      grp("Kamrul Islam", "tel:+8801798142509"),Divider(),
      grp("Anirban Modak", "tel:01750707507"),Divider(),
      grp("Ashif Ahmed", "tel:01761743660"),Divider(),
      grp("Diptho Dey", "tel:01747466734"),Divider(),
      grp("Md.Faisal Ahmed", "tel:01723953251"),Divider(),
      grp("Farhad Ahmed", "tel:01788526578"),Divider(),
      grp("Haque Raihan", "tel:01723257615"),Divider(),
      grp("Mahin Abdullah", "tel:01716777770"),Divider(),
      grp("Mahin Abdullah", "tel:01716777770"),Divider(),
    ];
    List<Widget>aNeg=[
      grp("Masum Mollik", "tel:01521432497"),Divider(),
      grp("Syed Abdullah Didar", "tel:01778731861"),Divider(),
      grp("Sakib Ahmed", "tel:01795873525"),Divider(),
      grp("Suhan chowdhury", "tel:01728550034"),Divider(),
      grp("Shohel Azir", "tel:01727918484"),Divider(),
      grp("sagor ghose Chowdhury", "tel:01727918484"),Divider(),
      grp("sagor ghose Chowdhury", "tel:01727918484"),Divider(),
    ];
    List<Widget>bPos=[
      grp("Shafayat Azad", "tel:01967420511"),Divider(),
      grp("Abdullah Al Nahid", "tel:01980861633"),Divider(),
      grp("Md.Bodruzzaman Khan", "tel:01794738300"),Divider(),
      grp("Rejaul Islam", "tel:01743262696"),Divider(),
      grp("MD:Badruzzaman", "tel:01724005131"),Divider(),
      grp("Md Waliur Rahman Ehsan", "tel:01738441179"),Divider(),
      grp("TAYEF HASAN", "tel:01765773970"),Divider(),
      grp("md saiful islam", "tel:01736810056"),Divider(),
      grp("Md Sakib Mahmud", "tel:01710485850"),Divider(),
      grp("Forid ahmed", "tel:01723693014"),Divider(),
      grp("Md.shuhel ahmed", "tel:01717846222"),Divider(),
      grp("Ahsan Habib Noman", "tel:01521460024"),Divider(),
      grp("Srijon Bhattacharjee", "tel:01775201121"),Divider(),
      grp("Duha", "tel:01772597410"),Divider(),
      grp("Mohammed Jahed Hussain", "tel:01767669488"),Divider(),
      grp("Rumel Ahmed", "tel:01774214654"),Divider(),
      grp("Abir Sadat Wasim", "tel:01756376101"),Divider(),
      grp("Md. Abdur Rob", "tel:01767695345"),Divider(),
      grp("Diponkor Mojumdar", "tel:01785918636"),Divider(),
      grp("Morshedul Islam Rifat", "tel:01728787417"),Divider(),
    ];
    List<Widget>bNeg=[

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("কোন গ্রুপর রক্ত লাগবো?"),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15),
          child:  Center(child:   TextButton(onPressed: (){
            Navigator.of(context).push
              (MaterialPageRoute(builder: (context)=>ShowBG(g: ap, list: aPos)));},
            child:Padding(padding: EdgeInsets.all(5),
              child: Text(ap,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.red,width: 6)
                  ),
                )
            ),
          ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: an, list: aNeg)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(an,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: bp, list: bPos)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(bp,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: bn, list: bNeg)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(bn,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: abp, list: aPos)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(abp,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: abn, list: aPos)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(abn,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: op, list: aPos)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(op,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child:  Center(child:   TextButton(onPressed: (){
              Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>ShowBG(g: on, list: aPos)));},
              child:Padding(padding: EdgeInsets.all(5),
                child: Text(on,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.red,width: 6)
                    ),
                  )
              ),
            ),),
          ),
          TextButton(onPressed: ()async{
            await launch("https://www.facebook.com/groups/136870483467777/");
          }, child: Text("ব্লাড কালেকশন ওর গ্রুপ ও যাইতাম",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),))
        ],
      ),
    );
  }
}
class ShowBG extends StatefulWidget {
 String g;
 List<Widget>list;
 ShowBG({required this.g,required this.list});
  @override
  _ShowBGState createState() => _ShowBGState(g:g,list:list);
}

class _ShowBGState extends State<ShowBG> {
  String g;
  List<Widget>list;
  _ShowBGState({required this.g,required this.list});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(g),
      ),
      body: ListView.builder(itemBuilder: (context,i)=>list[i],
      itemCount: list.length,
      ),
    );
  }
}
