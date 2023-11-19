import 'package:assets_audio_player/assets_audio_player.dart';

class AudioServiceEx{
  static final _audioplayer = AssetsAudioPlayer();
  void initAudio(){
    try{

      _audioplayer.open(Audio('assets/sample-3s.mp3'));
     }catch(e){
      print('=========>Exception while play Sound : $e');}


  }
  static void playSound(){
    try{

      _audioplayer.play();}catch(e){print('=========>Exception while play Sound : $e');}

  }
 static void stopSound(){
    try{
      _audioplayer.stop();}catch(e){
      print('=========>Exception while Stop Sound : $e');}

  }
}