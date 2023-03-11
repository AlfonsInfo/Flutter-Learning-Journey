import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//! masih gagal berhubungan dengan null safety
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioplayer = AudioPlayer();
  String durasi = "00.00.00";

  _MyAppState()
  {
    audioplayer.onPlayerStateChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
     });
     audioplayer.setReleaseMode(ReleaseMode.LOOP); // release dilepasin dari memory aka stop , loop berputar ulang
  }

  void playSound(String url) async{
    await audioplayer.play(url);
  }
  void resumeSound() async{
    await audioplayer.resume();
  }
  void stopSound() async{
    await audioplayer.stop();
  }
  void pauseSound() async{
    await audioplayer.pause();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Playing Music'),),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              playSound("sounds/mariobross.mp3");
            }, child: Text("Play"),),
            ElevatedButton(onPressed: (){
              pauseSound();
            }, child: Text("Pause"),),
            ElevatedButton(onPressed: (){
              stopSound();
            }, child: Text("Stop"),),
            ElevatedButton(onPressed: (){
              resumeSound();
            }, child: Text("Resume"),),
            Text(durasi, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600))
          ],
        ),) ,
      ),
    );
  }
}