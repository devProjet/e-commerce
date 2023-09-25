import 'dart:async';

import 'package:flutter/material.dart';
import 'musique.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Musique'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Musique> maListeDeMusiques = [
    Musique('Theme Swift', 'Codabee', 'images/naobim.png', 'musique/epicaly.mp3'),
    Musique('Theme Flutter', 'Codabee', 'images/naobim.png', 'musique/cheerful.mp3'),
  ];

  Musique? maMusiqueActuelle;
  Duration   position = new Duration(seconds: 0);
  AudioPlayer? audioPlayer;
  StreamSubscription? positionSub;
  StreamSubscription? stateSubscription;

  @override
  void initState() {
    super.initState();
    maMusiqueActuelle = maListeDeMusiques[0];

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("My musique", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 9.0,
              child: Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(maMusiqueActuelle!.imagePath!),
              ),
            ),
            texteAvecStyle(maMusiqueActuelle!.title!, 1.5),
            texteAvecStyle(maMusiqueActuelle!.artists!, 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconButton(Icons.fast_rewind, 30.0, ActionMusique.rewind),
                iconButton(Icons.play_arrow, 45.0, ActionMusique.play),
                iconButton(Icons.fast_forward, 30.0, ActionMusique.forward),
                //iconButton(Icons.fast_rewind, 30.0, ActionMusique.rewind),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                texteAvecStyle("0:0", 0.8),
                texteAvecStyle("0:22", 0.8),
              ],
            ),
            Slider(
                value: position.inSeconds.toDouble(),
                min: 0.0,
                max: 30.0,
                inactiveColor: Colors.white,
                activeColor: Colors.red,
                onChanged: (double d){
                  setState(() {
                    Duration nouvelleDuretion = new Duration(seconds: d.toInt());
                    position = nouvelleDuretion;
                  });
                }
            )
          ],
        ),
      ),
    );
  }

  IconButton iconButton(IconData icone, double taille, ActionMusique actonMusique){
    return IconButton(onPressed: (){
      switch(actonMusique){
        case ActionMusique.play:
          print('Play');
          final player = AudioCache();
          player.play('musique/cheerful.mp3');
          break;
        case ActionMusique.pause:
          print('Pause');
          break;
        case ActionMusique.rewind:
          print('Rewind');
          break;
        case ActionMusique.forward:
          print('Forward');
          break;

      }
    }, icon: Icon(icone),
    iconSize: taille,
    color: Colors.white,);
  }

  Text texteAvecStyle (String data, double scale){
    return Text(
        data,
        textScaleFactor: scale,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  void configurationAudioPlayer(){
    audioPlayer = new AudioPlayer();
    positionSub = audioPlayer!.onPlayerStateChanged.listen((event) {
      position = event as Duration;
    });

  }
}

enum ActionMusique{
  play, pause, rewind, forward
}

enum PlayState{playning, stopped, paused}
