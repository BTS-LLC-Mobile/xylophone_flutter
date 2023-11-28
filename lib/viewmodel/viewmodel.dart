import 'package:audioplayers/audioplayers.dart';

// Normally I stack all functions into the viewmodel file, but I usually call it
// manager or something. It could be a giant class, or a collection of classes,
// depends on how big the project is and how much coffee I have had. Below keeps
// all functionality out of the view.
class MusicSoundPlayer {
  final String fileName;

  MusicSoundPlayer({required this.fileName});

  Future<void> playSound() async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(AssetSource('assets/audio/$fileName.wav'));
  }

}
