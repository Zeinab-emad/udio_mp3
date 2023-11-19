import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:udio_mp3/services/audio_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),

debugShowCheckedModeBanner: false
      ,      home:
      const MyHomePage(title: 'Flutter Demo Home Page'),
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
@override
  void initState(){
 // AudioServiceEx.initAudio();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//الزراير ف وسط الصفحه
          children: [
            ElevatedButton(onPressed: (){
              AudioServiceEx.playSound();
              }, child: const Text('Play Sound')),
const SizedBox(height: 10,),//مسافه بين مربعين الزرار
            ElevatedButton(onPressed: (){
              AudioServiceEx.stopSound();
              }, child: const Text('Stop Sound')),
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
