import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sylheti/name.dart';
List<String>favData=[];
Color bl=Colors.black;
List<Name>FavNAme=[];
List<Color>clr=[bl,bl,bl,bl,bl,bl,bl,bl,bl];
List<Icon>icn=[Icon(Icons.favorite),Icon(Icons.favorite),Icon(Icons.favorite),Icon(Icons.favorite),
  Icon(Icons.favorite),Icon(Icons.favorite),Icon(Icons.favorite),Icon(Icons.favorite),Icon(Icons.favorite)];
 String sjD="শাহজালাল রহ। এর মাজারর এলাকারে দরগা গেইট কওয়া অয়। আম্বরখানা পয়েন্ট থাকি দক্ষিনেদি (চউহাট্টা বায়) ৪-৬ মিনিট আটলেউ দরগাহ গেইট বা মাজার গেইট ফাইলিবা। সোজা হাতর ডাইনেদি চাইলেউ শাহজালাল রহঃ এর মাজার ফাইলিবা।।";
 String spD="শাহজালাল মাজার থাকি লোকাল সি এনজিএ শাহপরান রহঃ মাজার যাইতা ফারবা । আবার বন্দর পয়েন্ট থাকি লেগুনা/ বাস দুইওটাউ ফাইবা। ভাড়া ২০-৩০ টেখার ভিতরে ফরবো। ফুরা শাহপরান মাজার গেইটও লামাইয়া দিব।  আবার আম্বরখানা পয়েন্ট থাকি লোকাল সি এনজি এ পয়লা টিলাগর, হিন তাকি লেগুনা/বাস/সিএনজি সবতাউ ফাইবা। সবতায় ৩০ টেখার বেশি ভাড়া যাইতো নায়।";
 String jafD="জাফলং যাওয়ার লোকাল বাস কদমতলী আর সোবহানীঘাট থাকি ছারে। দুইওখানোউ নরমাল লোকাল বাস আর গেইটলক বাস আছে। নরমাল বাস ভাড়া ৭০ টেখা আর গেইটলক ১০০ টেখা । বাসে একবারে ডাইরেক্ট জাফলং গেইটও নিয়া লামাইয়া দিব।";
 String bisD="০১৮২৮৫২৬১৪৫, নাহিয়ান ভাইরে ফোন করি জিকাইলাও, তাইন কইবানে।";
 String sfD="আম্বরখানা পয়েন্ট থাকি এয়ারপোর্ট রোডেদি ৩-৪ মিনিট আটলেউ সাদা ফাত্তরর বাস কাউন্টার ফাইলিবা। দুই লাখান বাস হিনো ফাইবা, ফয়লা ফাইবা বি আর টি সি’র দুইতালা বাস, আর এর সামনে ফাইবা সাদা পাথর পরিবহনর সুন্দর সাদা বাস। বি আরটিসির টিকেট ৬৫ টেকা করি, আর সাদা পাথর পরিবহনর টিকেট ৭০ টেকা করি। সাদা পাথর পরিবহনও রিটার্ন টিকেটর ব্যাবস্থা আছে। রিটার্ন টিকেট সহ টিকেট করলে তারা ১০ টেকা আরো ডিসকাউন্ট দেয়। সকাল ৯.৩০ থাকি আদা ঘন্টা বাদে বাদেউ বাস সাদা পাথর যায়। ৪৫-৫০ মিনিটে ডাইরেক্ট সাদা ফাত্তরও যাওয়া যায়। আবার রিটার্ন বাস থাকে সন্ধ্যা ৭ টা পর্যন্ত। বাস এ যেখানো লামাইয়া দিবো, ইন থাকি আবার নৌকায় ১০-১৫ মিনিটে মেইন স্পট ও লইয়া যায়। এক নৌকাত ৮ জন নেয় সর্বচ্চ। নৌকায় যাওয়া আওয়ার ভাড়া ৮০০ টেকা নেয়।";
 String lkD="০১৮২৮৫২৬১৪৫, নাহিয়ান ভাইরে ফোন করি জিকাইলাও, তাইন কইবানে।";
 String sbD="০১৮২৮৫২৬১৪৫, নাহিয়ান ভাইরে ফোন করি জিকাইলাও, তাইন কইবানে।";
 String rgD="০১৮২৮৫২৬১৪৫, নাহিয়ান ভাইরে ফোন করি জিকাইলাও, তাইন কইবানে।";
 String chaD="০১৮২৮৫২৬১৪৫, নাহিয়ান ভাইরে ফোন করি জিকাইলাও, তাইন কইবানে।";
List<String> dis=[sjD,spD,jafD,bisD,sfD,lkD,sbD,rgD,chaD];
List<String>travImg=["image/sahj.jpg","image/sahp.jpg","image/jaf.jpg","image/bis.jpg",
  "image/sada.jpg","image/lala.jpg","image/shap.jpg","image/rat.jpg","image/cha.jpg"];
 List<String>sjPic=["image/sahj.jpg","image/sahj2.jpg","image/sahj3.jpg"];
 List<String>spPic=["image/sahp.jpg","image/sahp2.jpg","image/sahp3.jpg"];
 List<String>jafPic=["image/jaf.jpg","image/jaf2.jpg","image/jaf3.jpg"];
 List<String>bisPic=["image/bis.jpg","image/bis2.jpg","image/bis3.jpg"];
 List<String>sadaPic=["image/sada.jpg","image/sada2.jpg","image/sada3.jpg"];
 List<String>lalaPic=["image/lala.jpg","image/lala2.jpg","image/lala3.jpg"];
 List<String>sapPic=["image/shap.jpg","image/shap2.jpg","image/shap3.jpg"];
 List<String>ratPic=["image/rat.jpg","image/rat2.jpg","image/rat3.jpg"];
 List<String>chaPic=["image/cha.jpg","image/cha2.jpg","image/cha3.jpg"];
List<List<String>>all=[sjPic,spPic,jafPic,bisPic,sadaPic,lalaPic,sapPic,ratPic,chaPic];
class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);
  @override
  _TravelState createState() => _TravelState();
}
class _TravelState extends State<Travel> {
  List<String> travTitle=["শাহজালাল (রহঃ) মাজার যাইতাম","শাহপরান (রহঃ) মাজার যাইতাম","জাফলং যাইতাম","বিছনাখান্দি যাইতাম","সাদা ফাত্তর যাইতাম","লালাখাল যাইতাম",
    "শাপলা বিল যাইতাম","রাতারগুল যাইতাম","চা-বাগান যাইতাম"];
  List<Name> travell=[];
  addData(){
    for(int i=0; i<travTitle.length; i++){
      travell.add(Name(title: travTitle[i], description:dis[i],img: all[i]));
    }
  }
  @override
  void initState() {
    addData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ফাখাইতাম"),
      ),
      body: ListView.builder(
          itemCount: travell.length,
          itemBuilder: (context,i)=>GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Trav(name: travell[i],ind: i,icon: icn[i],)));
          },
          child: Padding(padding: EdgeInsets.only(top: 10,right: 5),
            child:   Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(10))
              ),
              padding: EdgeInsets.only(left: 5),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(travTitle[i],style: TextStyle(
                    fontSize: 18,
                  ),),
                  Image.asset(
                    travImg[i],
                    height: 50,
                    //width: 50,
                  ),
                ],
              ),
            ),),
        ),
      )
    );
  }
}
class Trav extends StatefulWidget {
  Name name;
  int ind;
  Icon icon;
 Trav({required this.icon,required this.name, required this.ind});
  @override
  _JafState createState() => _JafState(name: name,ind: ind,icn: icon);
}
class _JafState extends State<Trav> {
  Name name;
  int ind;
  Icon icn;
  _JafState({required this.name,required this.ind,required this.icn});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name.title),
        actions: [
          IconButton(onPressed: (){
            String msg="iiii";
            if(favData.contains(name.title)){favData.remove(name.title);}
            else{
            favData.add(name.title);}
            FavNAme.add(Name(title: name.title, img: name.img, description: name.description));
            // audio.load("sada.mp3");
            // audio.play("sada.mp3");
            // audio.duckAudio=true;
            bool yn=true;
            setState((){
              clr[ind]=(clr[ind]==Colors.black?Colors.pink:Colors.black);
              //pink=(pink==Colors.black?Colors.pink:Colors.black);
              msg=(clr[ind]==Colors.pink?"Added to favourite":"Removed from favourite");
              //pink==Colors.black?Colors.pink:Colors.black;
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 1),
              content: Text(msg),
            ));
          },
              icon: icn,color: clr[ind],)
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                // padding: EdgeInsets.only(top: 15,bottom: 15,right: 15),
                child: CarouselSlider.builder(
                   options: CarouselOptions(
                       autoPlay: true,autoPlayAnimationDuration: Duration(seconds: 1),
                       scrollDirection: Axis.horizontal,
                     autoPlayInterval: Duration(seconds: 2)
                   ),
                    itemCount: name.img.length,
                    itemBuilder: (context,i,pageViewIndex)=>Padding(
                      padding: EdgeInsets.all(5),child:  Image.asset(name.img[i]),
                    ),
                ),
              ),
              Text("কিলাখান যাওয়া যায়?",style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
              ),
              Padding(padding: EdgeInsets.all(5),child: Text(dis[ind],style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              ),
              )
            ],)
        ],),
    );
  }
}

class Fav extends StatefulWidget {
  // Fav({required this.title});
  // String title;
  @override
  _FavState createState() => _FavState();
}
class _FavState extends State<Fav> {
  // String title;
  // _FavState({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite Items"),),
      body: ListView.builder(itemBuilder: (context,i)=>Padding(padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavScreen(
                    head: FavNAme[i].title, pic: FavNAme[i].img, des: FavNAme[i].description)));
              },
              child: Text(favData[i],style: TextStyle(fontSize: 18),),
            ),
            Divider()
          ],
        ),
      ),
        itemCount: favData.length,
      ),
    )
    ;
  }
}
class FavScreen extends StatelessWidget {
  String head;
  List<String> pic;
  String des;
  FavScreen({required this.head,required this.pic, required this.des});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(head),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                // padding: EdgeInsets.only(top: 15,bottom: 15,right: 15),
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: true,autoPlayAnimationDuration: Duration(seconds: 1),
                      scrollDirection: Axis.horizontal,
                      autoPlayInterval: Duration(seconds: 2)
                  ),
                  itemCount: pic.length,
                  // controller: ScrollController().animateTo(ScrollController().position.maxScrollExtent,
                  //     duration: Duration(seconds: 2), curve: Curves.easeOut()),
                  itemBuilder: (context,i,pageJesata)=>Padding(padding: EdgeInsets.all(10),child:  Image.asset(pic[i]),),
                ),
              ),
              Text("কিলাখান যাওয়া যায়?",style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
              ),
              Padding(padding: EdgeInsets.all(5),child: Text(des,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              ),
              )
            ],)
        ],),
    );
  }
}



