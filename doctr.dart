import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Daktor{
  String name;
  String chemb;
  String num;
  Daktor({required this.name,required this.chemb,required this.num});
}
class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
 Widget format(String nam,String chem,String mob) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(20))),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: ListTile(
            onTap: () async {
              await launch(mob);
            },
            title: Text(nam, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.green[800],
            )
            ),
            subtitle: Text(chem,style: TextStyle(fontSize: 15),),
            trailing: Icon(Icons.call, color: Colors.blue,),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
   String medi="মেডিসিন বিশেষজ্ঞ-";
   String diabetic="ডায়াবেটিক বিশেষজ্ঞ-";
   String gaini="গাইনি/স্ত্রীরোগ বিশেষজ্ঞ-";
   String shishu="শিশু রোগ বিশেষজ্ঞ-";
   String nakKanGola="নাক কান গলা বিশেষজ্ঞ-";
   String burnNps="বার্ণ ও প্লাস্টিক সার্জারী-";
   String ked="কিডনি বিশেষজ্ঞ-";
   String eye="চক্ষু বিশেষজ্ঞ-";
   String trauma="ট্রমা,অর্থোপেডিক্স ও হাড় জোড় বিশেষজ্ঞ-";
   String neuro="নিউরোলজী বিশেষজ্ঞ-";
   String urol="ইউরোলজি বিশেষজ্ঞ-";
   String ridrug="হৃদরোগ/কার্ডিওলজি বিশেষজ্ঞ-";
   String liver="লিভার/ পরিপাক ও গ্যাষ্ট্রোএন্টারোলজী বিশেষজ্ঞ-";
   String chormo="চর্ম ও যৌন রোগ বিশেষজ্ঞ-";
   String bokkho="বক্ষব্যাধি বিশেষজ্ঞ-";

    List<Widget>medicine=[
      format("ডাঃ শিশির চক্রবতী", "চেম্বারঃ পপুলার ডায়গনিষ্টিক সেন্টার", "tel:01719374087"),
      format("ডাঃ কে. এম. আখতারুজ্জামান", "মাউন্ট এডোরা হসপিটাল লিমিটেড,আখালিয়া", "tel:01714000770"),
      format("ডাঃ মোঃ ফয়জুল ইসলাম চৌধুরী", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবাহানীঘাট", "tel:01713301523"),
      format("ডাঃ গৌতম কুমার রায়", "চেম্বারঃ নূরজাহান হসপিটাল, দরগা গেইট", "tel:01712932062"),
      format("ডাঃ মো: হেজবুল্লাহ জীবন", "পপুলার মেডিকেল সেন্টার, কাজলশাহ", "tel:01714726428"),
      format("ডাঃ ইকবাল আহমদ চৌধুরী", "চেম্বারঃ ইবনে সিনা হসপিটাল, সোবহানীঘাট", "tel:01713301523"),
      format("ডাঃ মৃনাল কান্তি দাশ", "মেম্বারঃ মেডিএইড ডায়াগনস্টিক সেন্টার, কাজলশাহ", "tel:01778882344"),
      format("ডাঃ প্রদ্যোত কুমার ভট্টাচার্য", "চেম্বার- ল্যাবএইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডাঃ মো: এনায়েত হোসেন", "চেম্বার – ট্রাস্ট মেডিকেল সার্ভিসেস, কাজল শাহ", "tel:01926677791"),
      format("ডাঃ মাহমুদুল মজিদ চৌধুরী শাহীন", "চেম্বার- মেডিএইড,দরগা মিনার সংলগ্ন", "tel:01753070708"),
    ];
    List<Widget>diab=[
      format("ডা: এম আর হাসান", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা:নুরুল আফসার বদরুল", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: মোহাম্মদ শফিউল্লাহ", "চেম্বার – ট্রাষ্ট মেডিকেল, মধুশহীদ", "tel:0192667791"),
      format(" ডা: শাহ এমরান", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01790482281"),
      format("ডা: মো: আব্দুল হান্নান তারেক", "চেম্বার: ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:013301523"),
    ];
    List<Widget>gai=[
      format("ডা: নাদিরা বেগম", "চেম্বারঃ ওয়েসিস হাসপিটাল, সোবহানীঘাট", "tel:01611990000"),
      format("ডা: জামিলা আলম", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট","tel:01713301523"),
      format("ডা: শাহানা ফেরদৌস চৌধুরী", "চেম্বারঃ ইউনাইটেড পলি ক্লিনিক, জিন্দাবাজার", 'tel:01712731512'),
      format("ডা: সৈয়দা তৈয়বা বেগম", "চেম্বারঃ মাদার কেয়ার ক্লিনিক, সিলেট স্টেডিয়াম উত্তর পাশে", "tel:0821716580"),
      format("ডা: হোসনে আরা বেবী।", "চেম্বারঃ আরোগ্য ক্লিনিক,মধুশহীদ", "tel:01711164912"),
      format("ডা: শামসুন নাহার বেগম (হেনা)", "চেম্বারঃ আল হারামাইন হাসপাতাল", "tel:01931225555"),
    ];
    List<Widget>sisu=[
      format("ডা: এম এ মালিক", "চেম্বারঃ ট্রাস্ট মেডিকেল সার্ভিসেস,কাজলশাহ", "tel:01926677791"),
      format("ডা: মো: মনোজ্জির আলী", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:0175155826"),
      format("ডা: এম এ হাই", "চেম্বারঃ ইবনেসিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: মো: রাশেদুল হক", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: প্রভাত রঞ্জন দে", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01717802022"),
      format("ডা: প্রভাত রঞ্জন দে", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01717802022"),
    ];
    List<Widget>nakKG=[
      format("ডা: শামীম আনোয়ারুল হক", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:0171130963"),
      format("ডা: এস এস এ আল- মাহমুদ সাদী", "চেম্বারঃ  ইবনেসিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: ওয়াজির আহমদ চৌধুরী", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01711454390"),
      format("ডা: ঋতুরাজ দেব", "চেম্বারঃ ৪৪,৪৫ ষ্টেডিয়াম মার্কেট", "tel:01725365240"),
      format("ডা: এন কে সিনহা", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
    ];
    List<Widget>burnPS=[
      format("ডা: হাসিব রহমান", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01957096765"),
      format("ডা: মো: আব্দুল মান্নান", "চেম্বারঃ মেডিনোভা মেডিকেল সার্ভিসেস,কাজলশাহ", "tel:01754673017"),
      format("ডা: তাহমিনা সাত্তার", "চেম্বারঃ ট্রাস্ট মেডিকেল সার্ভিসেস, মধুশহীদ", "tel:01926677791"),
    ];
    List<Widget>kedn=[
      format("ডা: আব্দুল লতিফ (রেনু)", "চেম্বারঃ আল হারামাইন হাসপাতাল,সোবহানীঘাট", "tel:01931225555"),
      format("ডা: নজমুস সাকিব", "চেম্বারঃ নুরজাহান হাসপাতাল, দরগাহ গেইট", "tel:01842744244"),
      format("ডা: মুজিবুর রহমান", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডা: মঞ্জুর রশিদ চৌধুরী", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডা: মোহাম্মদ নজরুল ইসলাম", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
    ];
    List<Widget>ey=[
      format("ডা: মোশাহিদ ঠাকুর", "চেম্বারঃ ষ্টেডিয়াম মার্কেট(২য় তলা)", "tel:01788829500"),
      format("ডা: এ. এন এম ইউসুফ", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: খায়ের আহমদ চৌধুরী", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01752158437"),
    ];
    List<Widget>trmA=[
      format("ডা: দিপংকর নাথ তালুকদার", "চেম্বারঃ এবিসি ডায়াগনস্টিক সেন্টার,চৌহাট্টা", "tel:01711859677"),
      format("ডা: পার্থ সারথী সোম", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডা: এম এ গফফার", "চেম্বারঃ ট্রাস্ট মেডিকেল সার্ভিসেস, মধুশহীদ", "tel:01926677791"),
      format("ডা: সুমন মল্লিক", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01717611118"),
    ];
    List<Widget>neu=[
      format("ডা: উত্তম কুমার", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01722918222"),
      format("ডা: মো: রাশিদুন্নবী খাঁন", "চেম্বারঃ পপুলার মেডিকেল সেন্টার,কাজলশাহ", "tel:01720147434"),
      format("ডা: আফজাল মমিন", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
    ];
    List<Widget>uro=[
      format("ডা: হাসান আখতার", "চেম্বারঃ নুরজাহান হাসপাতাল, দরগাহ গেইট", "tel:01842744244"),
      format("ডা: প্রাণাশীষ সাহা", "চেম্বারঃ পপুলার মেডিকেল সেন্টার, কাজলশাহ", "tel:01716333521"),
      format("ডা: মুজিবুর রহমান", "চেম্বারঃ ওয়েসিস হাসপাতাল, সোবহানীঘাট", "tel:01611990000"),
      format("ডা: মো: ছিদ্দিকুর রহমান", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01773300246"),
    ];
    List<Widget>rid=[
      format("ডা: সুধাংশু রঞ্জন দে", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডা:মুহাম্মদ শাহাবুদ্দীন", "চেম্বারঃ ট্রাস্ট মেডিকেল সার্ভিসেস, মধুশহীদ", "tel:01715067019"),
      format("ডা: মো: বদরুল আলম", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: মো: শাহ জামাল হোসেন", "চেম্বারঃ ল্যাব এইড ডায়াগনস্টিক সেন্টার,কাজলশাহ", "tel:01766662727"),
      format("ডা: মৃনাল কান্তি দাশ", "চেম্বারঃ মেডিনোভা মেডিকেল সার্ভিসেস, কাজলশাহ", "tel:01766878787"),
      format("ডা: অজয় কুমার দত্ত", "চেম্বারঃ আল হারামাইন হাসপাতাল,সোবহানীঘাট", "tel:01931225555"),
    ];
    List<Widget>liv=[
      format("ডা: সৈয়দ আলমগীর সাফওয়াত", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: মধুসূদন সাহা", "চেম্বারঃ পপুলার মেডিকেল সেন্টার, কাজলশাহ", "tel:01920134245"),
      format("ডা: অলিউর রহমান", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
    ];
    List<Widget>chormoo=[
      format("ডা: সৈয়দ মামুন মোহাম্মদ", "চেম্বারঃ মেডিনোভা মেডিকেল সার্ভিসেস, কাজলশাহ", "tel:01751673017"),
      format("ডা: সালেহ আহমদ শাহিন", "চেম্বারঃ ইবনে সিনা হাসপাতাল,সোবহানীঘাট", "tel:01713301523"),
      format("ডা: মোহাম্মদ এ হাই", "চেম্বারঃ ২২ ষ্টেডিয়াম মার্কেট", "tel:01712291887"),

    ];
    List<Widget>bok=[
      format("ডাঃ মোঃ আব্দুল গফুর", "চেম্বারঃ ৩২,স্টেডিয়াম মার্কেট/১৬,ট্রাস্ট মেডিকেল সার্ভিসেস", "tel:01749310454"),
      format("ডাঃ আব্দুল্লাহ ইবনে আমির চৌধুরী", "চেম্বারঃ ১৯, স্টেডিয়াম মার্কেট", "tel:01719894171"),
      format("ডাঃ এ. কে, চন্দ", "চেম্বারঃ ৩৩/বি, স্টেডিয়াম মার্কেট", "tel:01796727405"),
      format("ডাঃ এম আহমদ সেলিম", "চেম্বারঃ পপুলার মেডিকেল সেন্টার লিঃ (৫ম তলা),কাজলশাহ", "tel:01712280571"),
      format("ডাঃ মোঃ মনোয়ারুল ইসলাম ভূঁইয়া", "চেম্বারঃ ১৬নং,স্টেডিয়াম মার্কেট (২য় তলা)", "tel:01712882691"),
      format("ডাঃ মৃনাল কান্তি দাস", "চেম্বারঃ ক্রিসেন্ট মেডিকেল সার্ভিস, কাজলশাহ,", "tel:01766878787"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("ডাক্তর হখলর লিস্ট"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(medi,
              style: TextStyle(
              fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: medicine, ttl: medi)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(diabetic,
              style: TextStyle(
              fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: diab, ttl: diabetic)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(gaini,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: gai, ttl: gaini)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(shishu,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: sisu, ttl: shishu)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(nakKanGola,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: nakKG, ttl: nakKanGola)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(burnNps,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: burnPS, ttl: burnNps)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(ked,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: kedn, ttl: ked)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(eye,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: ey, ttl: eye)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(trauma,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: trmA, ttl: trauma)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(neuro,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: neu, ttl: neuro)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(urol,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: uro, ttl: urol)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(ridrug,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: rid, ttl: ridrug)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(liver,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: liv, ttl: liver)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(chormo,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: chormoo, ttl: chormo)));
              },
            ),
          ),Divider(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title:Text(bokkho,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("সিরিয়ালর লাগি ডাইরেক্ট কল করতা ফারবা",
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
                  backgroundColor: Colors.yellow,padding: EdgeInsets.all(20),));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DocList(docList: bok, ttl: bokkho)));
              },
            ),
          ),Divider(),
        ],
      ),
    );
  }
}
class DocList extends StatefulWidget {
  List<Widget>docList;
  String ttl;
  DocList({required this.docList,required this.ttl});
  @override
  _DocListState createState() => _DocListState(docList: docList,ttl: ttl);
}

class _DocListState extends State<DocList> {
  List<Widget>docList;
  String ttl;
  _DocListState({required this.docList,required this.ttl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ttl),),
      body: ListView.builder(itemBuilder: (context,i)=>docList[i],
      itemCount: docList.length,
      ),
    );
  }
}

