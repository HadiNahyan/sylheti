import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter/painting.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("সিলেটি চ্যানেল হকল"),),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 5),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
              ),
              elevation: 5,
              child:Padding(padding: EdgeInsets.all(10),
                child:  ListTile(
                  title:
                  Text("Green Bangla", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  subtitle: RichText(text: TextSpan(
                      children:[
                        TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                        TextSpan(text: "সিলেটি নাটক",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                      ]
                  )),
                  onTap: ()async{
                    await launch("https://www.youtube.com/c/greenbangla/");
                    //"tel:01828526145"",universalLinksOnly: true);
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("N"),
                    foregroundImage: NetworkImage(
                    "https://yt3.ggpht.com/ytc/AKedOLStT5Jg6i8ixrtuwAZFD2BQoW5GmBmU740_M5tYnw=s176-c-k-c0x00ffffff-no-rj-mo"
                    ),
                    radius: 30,
                  ),
                  trailing: Icon(Icons.video_collection,
                    color: Colors.red,
                  ),
                ),)

          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
              ),
              elevation: 5,
              child:Padding(padding: EdgeInsets.all(10),
                child:  ListTile(
                  title:
                  Text("MHS Kitchen", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  subtitle: RichText(text: TextSpan(
                      children:[
                        TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                        TextSpan(text: "সিলেটি ভাইর রান্দা",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                      ]
                  )),
                  onTap: ()async{
                    await launch("https://www.youtube.com/c/MHSKitchen");
                    //"tel:01828526145"",universalLinksOnly: true);
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("N"),
                    foregroundImage: NetworkImage(
                   "https://yt3.ggpht.com/ytc/AKedOLRmMHazzQRg0_9pGbODrtu5_js_bSKpSQUjn3p1TQ=s176-c-k-c0x00ffffff-no-rj"
                    ),
                    radius: 30,
                  ),
                  trailing: Icon(Icons.video_collection,
                    color: Colors.red,
                  ),
                ),)

          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
              ),
              elevation: 5,
              child:Padding(padding: EdgeInsets.all(10),
                child:  ListTile(
                  title:
                  Text("SR101 OFFICIAL", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  subtitle: RichText(text: TextSpan(
                      children:[
                        TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                        TextSpan(text: "সিলেটি রেপ গান",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                      ]
                  )),
                  onTap: ()async{
                    await launch("https://www.youtube.com/channel/UClPyoOc0XONpFdju01NLutA");
                    //"tel:01828526145"",universalLinksOnly: true);
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("N"),
                    foregroundImage: NetworkImage(
                 "https://yt3.ggpht.com/ytc/AKedOLSsiDKG4gLBo308RFzJYWKSkANEurA6QAA3HHmh5g=s176-c-k-c0x00ffffff-no-rj"
                    ),
                    radius: 30,
                  ),
                  trailing: Icon(Icons.video_collection,
                    color: Colors.red,
                  ),
                ),)

          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
              ),
              elevation: 5,
              child:Padding(padding: EdgeInsets.all(10),
                child:  ListTile(
                  title:
                  Text("Comedy King", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  subtitle: RichText(text: TextSpan(
                      children:[
                        TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                        TextSpan(text: "সিলেটি নাটক",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                      ]
                  )),
                  onTap: ()async{
                    await launch("https://www.youtube.com/c/ComedyKingsylhet/");
                    //"tel:01828526145"",universalLinksOnly: true);
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("Logo"),
                    foregroundImage: NetworkImage(
                    "https://yt3.ggpht.com/ytc/AKedOLS8tDhX8J2sRL9hyJPHqsa5rKQzMkaMzI7asonH=s176-c-k-c0x00ffffff-no-rj-mo"),
                    radius: 30,
                  ),
                  trailing: Icon(Icons.video_collection,
                    color: Colors.red,
                  ),
                ),)

          ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("The Fazz Fayek", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি মজার ভিডিও",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/c/TheFazzFayek");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                          "https://yt3.ggpht.com/ytc/AKedOLTNIJoOsxTS5u8t71lkRcAAf_F8Sr9GZUPcdoC3hw=s176-c-k-c0x00ffffff-no-rj-mo"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Chysy Channel", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি মজার ভিডিও",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/c/CHYSYChannel");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                      "https://yt3.ggpht.com/_F_PQuyAz4eozaxO68_c-qzh4XJrZ7WWkuz50nYSUYb5d_luNIYx6Hrf9BTqadFVV0Eskux8xw=s176-c-k-c0x00ffffff-no-rj-mo"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Tahsan Vlogs", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি মজার ভিডিও",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/channel/UCIoxaRGfm1le-LdJ8rC96_w");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                    "https://yt3.ggpht.com/ytc/AKedOLQ5lPOFyIVpSvtJkHngD_1xSxWXCvEroedcMjPrEg=s176-c-k-c0x00ffffff-no-rj"
                     ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Farhan", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Facebook Page\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue)),
                          TextSpan(text: "সিলেটি মজার ভিডিও",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.facebook.com/Farhan227");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                      "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/255072327_409594967380659_631590140897755068_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHPtrxXvB1xgFtztMMhLTtsJJOXNC8mApckk5c0LyYClxTYjxs4AH1_PDm-YwF8fSBIOKxECkR0TdDKGQov5g-k&_nc_ohc=0mzQPkTBVLgAX-g5OUC&tn=pp4N1r2kuje72YK5&_nc_ht=scontent.fdac24-1.fna&oh=00_AT-pnS_McmoSDKDAU3KYERsn8Xu6D_eKiZmsS2K7DYlJjQ&oe=61F9C11C"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.facebook_rounded,
                      color: Colors.blue,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Mawan Jaygirder", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি মজার ভিডিও",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/channel/UCRdwit37ztYe20RCWnkmAIA");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                          "https://yt3.ggpht.com/ytc/AKedOLRDAQPFM8of_ARjPcalyIJCB5VOF5apZFYwfwKWGw=s176-c-k-c0x00ffffff-no-rj"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Rebel Delwar", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি রেপ গান",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/c/RebelDelwar/featured");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                     "https://yt3.ggpht.com/ytc/AKedOLQrUO7vvYgmAqLMPiHgp8E_vKoX_NJ8_ahhVZ9Eow=s176-c-k-c0x00ffffff-no-rj"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("Pollob Vai", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি রেপ গান",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/channel/UCT30zYeU9jYjsuDbvRf8RkQ");
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                     "https://yt3.ggpht.com/ytc/AKedOLQ8QDnj1-8xMXDUp-V4m5ZxLaCJ10jQTduTA8AuOQ=s176-c-k-c0x00ffffff-no-rj"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("JONY’S VLOG", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Youtube Channel\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red)),
                          TextSpan(text: "সিলেটি ভ্লগ",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.youtube.com/c/NurulAminJony");
                      //"tel:01828526145"",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("Logo"),
                      foregroundImage: NetworkImage(
                     "https://yt3.ggpht.com/ytc/AKedOLRrHJOX9lQ-FdLw3ko7GeyMcuRJ_3fee0ilwKfjNg=s176-c-k-c0x00ffffff-no-rj"
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.video_collection,
                      color: Colors.red,
                    ),
                  ),)

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                elevation: 5,
                child:Padding(padding: EdgeInsets.all(10),
                  child:  ListTile(
                    title:
                    Text("H U Nahyan\n(Creator of this App)", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    subtitle: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Facebook Page\n",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue)),
                          TextSpan(text: "Funny Sylhety Videos",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey))
                        ]
                    )),
                    onTap: ()async{
                      await launch("https://www.facebook.com/hunahyanc/",universalLinksOnly: true);
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("N"),
                      foregroundImage: NetworkImage(
                          "https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/234748101_224988266296522_8505456099816738392_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=rD_vDYbpmPUAX-Rr3x_&_nc_ht=scontent.fdac24-2.fna&oh=00_AT8mfNKcEGwNolAlKiSWh800Gej0661rVfRcKpNGta7c_w&oe=61FA6C48"),
                      radius: 30,
                    ),
                    trailing: Icon(Icons.facebook_rounded,
                      color: Colors.blue,
                    ),
                  ),)

            ),
          ),
          Divider(),
 Divider(),
Divider(),
    ],
      ),
    );
  }
}
