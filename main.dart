import 'dart:math';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sylheti/doctr.dart';
import 'package:sylheti/gan.dart';
import 'package:sylheti/travel.dart';
import 'package:sylheti/video.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sylheti/firebase_options.dart';
import 'blod_reg.dart';
import 'groups/game.dart';
import 'nagri.dart';

Future<bool> hasData(String key) async {
  final prefs = await SharedPreferences.getInstance();
  print(prefs.containsKey(key));
  return prefs.containsKey(key);
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}
bool lan=true;
class MyApp extends StatelessWidget {
  static List<String> amra=[];
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String>dat=[];
  @override
  Widget build(BuildContext context) {
    final Uri mail = Uri(
      scheme: 'mailto',
      path: 'hadiunnahyan2@gmail.com',
      query: 'subject=এখটা বিষয়ে কইতাম আছলাম&body=কিছু কথা আছিল, নিচে কইলাম-', //add subject and body here
    );
    List<String> img = [
      "image/trav.jpg",
      "image/gan.jpg",
      "image/blod.jpg",
      "image/fur.jpg",
      "image/dctr.jpg",
      "image/vid.jpg",
      "image/nagri.jpg",
      "image/game.jpg"
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final dtCon= TextEditingController();
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("image/nahyan.jpg"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                      //fit: StackFit.loose,
                      children: [
                        Container(
                          child: Text("H U Nahyan",style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),
                          ),
                          color: Colors.black54,
                          //height: 40,
                          width: 200,
                        ),
                        Container(
                          child: Text("hadiunnahyan2@gmail.com",style: TextStyle(color: Colors.white,
                          ),),
                          color: Colors.black54,
                          //height: 30,
                          width: 200,
                        ),
                  ]
                  ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fav()));
                },
                child:  ListTile(
                  title: Text("যেতা যেতা বালা লাগছে"),
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: ()async{
                  await launch(mail.toString());
                  //"tel:01828526145"
                },
                child:ListTile(
                  title: Text("আফনারে ইমেইল করতাম"),
                  trailing: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              ListTile(
                title: Text("রেটিং দিতাম"),
                trailing: Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.blue,
                height: 10,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    "ই এপটা ডাউনলোড করিয়া যে বালা কাম করছইন।। লগে থাকবা সবসময়, মানে সাপোর্ট দিবা আরকি, আমার বাসাত থাকা লাগতো নায়"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("আমার সিলেট"),
          actions: [
            GestureDetector(
              child: Icon(Icons.language),
              onTap: () {
                lan=!lan;
                if(lan==false)
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("এপের ভাষা প্রমিত বাংলা করা হয়েছে"),duration: Duration(seconds: 1),));
              else
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("এপের ভাষা সিলেটি করা হয়েছে"),duration: Duration(seconds: 1)));
                },
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
                height: height*.89,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        crossAxisCount: 2
                    ),
                    children: [
                      Container(
                        height: width / 4,
                        width: width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                offset: Offset(2, 4)),
                          ],
                          color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>Travel()));
                              },
                              child:  Image.asset(
                                img[0],
                                height: 140,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: width / 4,
                        width: width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                offset: Offset(2, 4)),
                          ],
                          color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>GanPage()));
                              },
                              child: Image.asset(
                                img[1],
                                height: 140,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: width / 4,
                        width: width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                offset: Offset(2, 4)),
                          ],
                          color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (await hasData('num')) {
                                 Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => AllDoner()));
                                }
                                else{
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Blood()));
                                }
                              },
                              child: Image.asset(
                                img[2],
                                height: 140,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: width / 4,
                        width: width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                offset: Offset(2, 4)),
                          ],
                          color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>Furi()));
                              },
                              child: Image.asset(
                                img[3],
                                height: 140,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Doctor()));
                        },
                        child: Container(
                        height: width / 4,
                        width: width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                offset: Offset(2, 4)),
                          ],
                          color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              img[4],
                              height: 140,
                            ),
                          ],
                        ),
                      ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Nagri()));
                        },
                        child:Container(
                          height: width / 4,
                          width: width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  offset: Offset(2, 4)),
                            ],
                            color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                img[6],
                                height: 140,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Video()));
                        },
                        child:Container(
                          height: width / 4,
                          width: width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  offset: Offset(2, 4)),
                            ],
                            color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                img[5],
                                height: 140,
                              ),
                            ],
                          ),
                        ),
                      ), GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Game()));
                        },
                        child:Container(
                          height: width / 4,
                          width: width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5,
                                  offset: Offset(2, 4)),
                            ],
                            color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                img[7],
                                height: 140,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],

                    padding: EdgeInsets.all(5),

                )
            ),

          ],
        )

        //   Text("কিতাবা বালানিইইইইইইইই"),
        //   Text("বাড়ির সব বালানিইইইইইইইই"),
        //   Text("বিদেশর সব বালানিইইইইইইইই"),
        //   Icon(Icons.emoji_emotions_outlined)
        // ],is trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Furi extends StatefulWidget {
  const Furi({Key? key}) : super(key: key);

  @override
  _FuriState createState() => _FuriState();
}

class _FuriState extends State<Furi> {
  static bool mas=false;
  static String chek(){
    mas=!mas;
    if(mas){
      return "image/masud.mp4";
    }
    else return "image/masud2.mp4";
  }
  final VideoPlayerController videoPlayerController =
  VideoPlayerController.asset(chek());

  ChewieController? chewieController;

  @override
  void initState() {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      showControls: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: Chewie(
                controller: chewieController!,
              )),
          // Image.asset("image/bala.jpg",),
        ],
      ),
    );
  }
}
