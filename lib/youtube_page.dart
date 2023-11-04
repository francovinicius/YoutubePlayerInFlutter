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
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Text('Como usar o App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                  )
                  ),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: const Text('Aqui ficará a descrição do texto! \nIt is a long established fact that a reader will be distracted by the readable'
                          ' content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal'
                          ' distribution of letters, as opposed to using, making it look like readable English. Many desktop publishing packages'
                          ' and web page editors now use Lorem Ipsum as their default model text, and a search for',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),))
              ),

              const SizedBox(
                height: 30,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                    onTap: () {
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Abrindo Questionário!", textAlign: TextAlign.center),
                              backgroundColor: Colors.blueGrey,
                            ));
                      }
                      );
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.download_rounded, size: 50,),
                        Text('Donwload'),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Icon(Icons.question_answer, size:50,),
                      Text('Questionário'),
                    ],
                  ),
                ],
              ),

            ],
          ),
      ),
      ),
    ),
    );

  }
}
