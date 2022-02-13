import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:newapp/audiosound.dart';

String firealarm = "alarm";
String electric = "electrical";

const Color_Green = "#4CFF4A";

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fireBase = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    var reFireBase = fireBase.ref();
    return Scaffold(
      appBar: AppBar(
        title: Text("FireAlarm System"),
      ),
      body: SafeArea(
        child: Container(
            child: ListView(
          children: [
            SizedBox(height: 30),
            StreamBuilder( // stream to live data 
              stream: reFireBase.onValue,//still waiting data from firebase 
              builder: (context, AsyncSnapshot snap) { // builder to connect context form stf
                if (snap.hasData && !snap.hasError && snap.data != null) { // shapp.hasdata don't Erorrr than in packge data have data don't null
                  var snapshot = snap.data.snapshot; //  make value snapshot  to call data in firebase 
                  print("'--------------------------'${snapshot.value}"); // print to view snapshort to call data
                  return IteamAlarm(  //required to call stf belowe
                    icon: Icon(Icons.notification_important,
                        size: 80, color: Colors.black),
                    name: firealarm, // 
                    value: snapshot.value[firealarm],//required data alarm in firealarm
                  );
                }
                return const Text(
                  "Something went wrong",
                );
              },
            ),
            SizedBox(height: 30),
            StreamBuilder(
              stream: reFireBase.onValue,
              builder: (context, AsyncSnapshot snap) {
                if (snap.hasData && !snap.hasError && snap.data != null) {
                  var snapshot = snap.data.snapshot;
                  print(
                      "'--------------------------'${snapshot.value[electric]}");
                  return IteamAlarm(
                    icon: Icon(
                      Icons.electrical_services,
                      size: 80,
                      color: Colors.black,
                    ),
                    name: electric,
                    value: snapshot.value[electric],
                  );
                }
                return const Text(
                  "Something went wrong",
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}

class IteamAlarm extends StatefulWidget {
  const IteamAlarm({Key key, required, this.name, this.value, this.icon})
      : super(key: key);

  final String name;
  final bool value;
  final Icon icon;

  @override
  _IteamAlarmState createState() => _IteamAlarmState();
}

class _IteamAlarmState extends State<IteamAlarm> {
  @override
  Widget build(BuildContext context) {

    var retuenSound = MyfunctionSound();
    retuenSound.playlocalSounds();
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        height: 150,
        //width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(70.0)),
          color: Colors.grey,
        ),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
              child: CircleAvatar(
                child: widget.icon,
                backgroundColor: widget.value//Condition
                    ? Colors.green
                    : Colors.red, //Expression Function Value
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //alignment: Alignment.center,
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: widget.value
                      ? Colors.blue
                      : Colors.red[200],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Stop",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget nameIteam() {
//   return Container(
//     margin: const EdgeInsets.only(left: 30, right: 30),
//     height: 150,
//     //width: 300,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(Radius.circular(70.0)),
//       color: Colors.grey,
//     ),
//     child: Row(
//       children: [
//         Container(
//           child: CircleAvatar(
//             child: Icon(
//               Icons.electrical_services,
//               size: 80,
//               color: Colors.black,
//             ),
//             radius: 60,
//             backgroundColor: Colors.green,
//           ),
//         ),
//         Container(
//           child: Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                 child: Text(
//                   "Electircal",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 25,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 60,
//                 width: 120,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                   color: Colors.blue,
//                 ),
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Stop",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
