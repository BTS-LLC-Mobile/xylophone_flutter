import 'package:flutter/material.dart';
import 'package:xylophone_flutter/viewmodel/viewmodel.dart';


// You could have functionality inside the onPressed function below since this is
// a tiny project. Originally I had it that way, but show MVVM, I yanked out the
// sound player stuff and jammed it into the viewmodel.dart file. Below is still
// "view" so you try your best to keep business logic out. Sometimes...you just
// can't and thats ok.
class MusicKeys extends StatelessWidget {
  final String fileName;
  final Color keyColor;

  const MusicKeys({
    super.key,
    required this.fileName,
    required this.keyColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: keyColor,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: () async {
          var player = MusicSoundPlayer(fileName: fileName);
          player.playSound();
        },
        child: const Text(''),
      ),
    ));
  }
}
