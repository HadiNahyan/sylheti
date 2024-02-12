import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sylheti/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class GanPage extends StatefulWidget {
  const GanPage({Key? key}) : super(key: key);

  @override
  _GanPageState createState() => _GanPageState();
}

class _GanPageState extends State<GanPage> {
  static int strt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("সিলেটি গান হুনতাম"),),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                ListTile(
                  title: Text("সুরমা গাংগর ফারও বাড়ি",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=rMSwx3IVC3M",
                        gan: "সুরমা গাঙ্গর ফারও বাড়ি")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("সিলটি ভাইসাব",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=13;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=iUD4YljwxDM",
                        gan: "সিলট ফাইলে যেওমন তেমন")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("মাটির পিঞ্জিরায় সোনার ময়নারে",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=PGFaAMRLXRs",
                        gan: "মাটির পিঞ্জিরায় সোনার ময়নারে")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile (
                  title: Text("হবিগঞ্জের জালালী কইতর",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=JaK9A_6A8Mc",
                        gan: "হবিগঞ্জের জালালী কইতর")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile (
                  title: Text("গ্রামের নওজোওান",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=30;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=Op3cb_xY-bc",
                        gan: "আগে কি সুন্দর দিন কাটাইতাম")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("ময়ুর পংক্ষী নাও",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=cEFa3BVlgzw",
                        gan: "কোন মিস্তরি নাও বানাইলো")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("চলিতে চরণ চলেনা",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=59;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=Ofe2d28DLBs",
                        gan: "আগের বাহাদুরি এখন গেলো কই?")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("নামাজ আমার হইলোনা আদায়",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=30;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=XsLWliVPWME",
                        gan: "নামাজ আমার হইলোনা আদায়")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("১৪ নং বেয়াক্কেল",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=25;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=-YCuzQJrbBc",
                        gan: "আস্তা বেয়াক্কল")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("লোকে বলে",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=5;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=EJphHoX5GvE",
                        gan: "শুন্যের ও মাজার")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("মাটিরও পিঞ্জিরার মাঝে",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=17;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=sUiqNP9_MT4",
                        gan: "কান্দে হাসন রাজার মন ময়নায় রে")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("ধুন্দুর মুন্দুর",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=5;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=nBTjqgiFO-0",
                        gan: "ধুন্দুর মুন্দুর")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("মুই ভালা নায়",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=nx23V76EWiI",
                        gan: "মুই ভালা নায়")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("বিদ্যুৎ আমরার ঘরও",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=10;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=pQyAsEd2jAU",
                        gan: "িদ্যুৎ আমরার ঘরও থাখইন না")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("হাবিগোষ্ঠী ছিলটি",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    strt=10;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=guYuoAwFOqU",
                        gan: "হাবিগোষ্ঠী ছিলটি")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ListTile(
                  title: Text("সুন্দরি ফুরি",style:TextStyle(fontSize: 20),),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gan(
                        lin:"https://www.youtube.com/watch?v=kuFcgtcRiuQ",
                        gan:"সুন্দরি ফুরি, তুমি মন করলায় চুরি")
                    ));
                  },
                  subtitle: Text("From Youtube"),
                ),Divider(),
                ]
            ),
          )
        ],
      ),
    );
  }
}
class Gan extends StatefulWidget {
  String gan;
  String lin;
  Gan({required this.lin,required this.gan});
  @override
  _GanState createState() => _GanState(gan: gan,link: lin);
}
class _GanState extends State<Gan> {
  String gan;
 String ?link;
  _GanState({required this.link,required this.gan});
  //static String link=lin;

  @override
  Widget build(BuildContext context) {
    MyApp.amra.add("hii");
    print(MyApp.amra[0]);
    link= YoutubePlayer.convertUrlToId(link!);
    YoutubePlayerController con=YoutubePlayerController(
        initialVideoId: link!,
        flags:YoutubePlayerFlags(
          //
          // isLive: true,
          useHybridComposition: true,
          mute: false,
          autoPlay: true,
          controlsVisibleAtStart: true,
          startAt: _GanPageState.strt,
        ),
    );
    _GanPageState.strt=0;
    return  Scaffold(
      appBar: AppBar(title: Text(gan),),
      body: Column(
        children: [
          YoutubePlayer(
            controller: con,showVideoProgressIndicator: true,
          width: MediaQuery.of(context).size.width,
            progressIndicatorColor: Colors.red,
          )
        ],
      ),
    );
  }
}
