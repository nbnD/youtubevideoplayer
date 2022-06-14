
import 'package:flutter/material.dart';

import 'video_player.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:const Text("Youtube player Demo")),
    body:SingleChildScrollView(
      child: Column(children: [
        YoutubeVideo(
                "https://www.youtube.com/watch?v=Ci4t-NkOY3I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG"),
    
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (ctx,i){
          return ListTile(title: Text("Item $i"),);
        })        
      ],),
    ));
  }
}