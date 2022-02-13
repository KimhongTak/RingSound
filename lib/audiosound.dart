


import 'package:audioplayers/audioplayers.dart';

var myAudioSound = "assets/asset/sounds/bell_5.mp3";

class MyfunctionSound {
  AudioCache audioCache = AudioCache();
  
  void playlocalSounds() async {
    var mYplaySound = await audioCache.play(myAudioSound);
    print("======================================>$mYplaySound");
  }
}