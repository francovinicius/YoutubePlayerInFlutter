import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({Key? key}) : super(key: key);

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {

 final YoutubePlayerController _ytcontrol = YoutubePlayerController(
    initialVideoId: '-iFcFgsigd0',
  );

 @override

  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Youtube'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
        constraints: BoxConstraints(

        maxWidth: MediaQuery.of(context).size.width,
        ),

        child: Column(
            children: [
              YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _ytcontrol,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.blueAccent,
                    handleColor: Colors.blueAccent,
                  ),
                ),
                builder: (context, player){
                  return Column(
                    children: [
                      player,
                    ],
                  );
                },
              ),


            ],
          ),
      ),
      ),
    ),
    );

  }
}
