

import 'package:flutter/material.dart';
// const LiveView({ Key? key }) : super(key: key);

import 'package:toggle_switch/toggle_switch.dart';
import 'package:video_player/video_player.dart';
 









class LiveView extends StatefulWidget {
  const LiveView({ Key? key }) : super(key: key);
  
  @override
  _LiveViewState createState() => _LiveViewState();
  
}
 
class _LiveViewState extends State<LiveView> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;
  List<bool> _selections = List.generate(3, (_)=> false);
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
        'videos/flutterapp1.mp4');
    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFe6e6e6), 
      

      body:Container(
        // alignment: Alignment.bottomLeft,
        
        
        
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [

        Container(
          
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: [
          

        FutureBuilder(
         

          
          
          future: videoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: videoPlayerController.value.aspectRatio,
                child: VideoPlayer(videoPlayerController),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),

        Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [


          

              ToggleSwitch(
                
                minWidth: 40.0,
                minHeight: 40.0,
                initialLabelIndex: 2,
                cornerRadius: 20.0,
                // activeFgColor: Colors.white,
                // inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 3,
                icons: [
                  Icons.file_download,
                  Icons.file_download,
                  Icons.file_download
                ],
                iconSize: 12.0,
                borderWidth: 2.0,
                // borderColor: [Colors.blueGrey],
                activeBgColors: [[Colors.blue], [Colors.pink], [Colors.purple]],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),

        

        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       videoPlayerController.value.isPlaying
        //           ? videoPlayerController.pause()
        //           : videoPlayerController.play();
        //     });
        //   },
        //   style: TextButton.styleFrom(
        //   backgroundColor: Colors.red
        //   ),
        //   child: Icon(
        //     videoPlayerController.value.isPlaying
        //         ? Icons.pause
        //         : Icons.play_arrow,
        //   ),
        // ),

        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       videoPlayerController.value.isPlaying
        //           ? videoPlayerController.pause()
        //           : videoPlayerController.play();
        //     });
        //   },
        //   style: TextButton.styleFrom(
        //   backgroundColor: Colors.white
        //   ),
        //   child: Icon(
        //     videoPlayerController.value.isPlaying
        //         ? Icons.pause
        //         : Icons.play_arrow,
        //   ),
        // ),


        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       videoPlayerController.value.isPlaying
        //           ? videoPlayerController.pause()
        //           : videoPlayerController.play();
        //     });
        //   },
        //   style: TextButton.styleFrom(
        //   backgroundColor: Colors.white
        //   ),
        //   child: Icon(
        //     videoPlayerController.value.isPlaying
        //         ? Icons.pause
        //         : Icons.play_arrow,
        //   ),
        // ),


        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       videoPlayerController.value.isPlaying
        //           ? videoPlayerController.pause()
        //           : videoPlayerController.play();
        //     });
        //   },
        //   style: TextButton.styleFrom(
        //   backgroundColor: Colors.white
        //   ),
        //   child: Icon(
        //     videoPlayerController.value.isPlaying
        //         ? Icons.pause
        //         : Icons.play_arrow,
        //   ),
        // )

        ],),),
         TextButton(
          onPressed: () {
            setState(() {
              videoPlayerController.value.isPlaying
                  ? videoPlayerController.pause()
                  : videoPlayerController.play();
            });
          },
          style: TextButton.styleFrom(
          backgroundColor: Colors.white
          ),
          child: Icon(
            videoPlayerController.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
          ),
        ),


        

      
      ],),)
        
      ],),),  
        
        
        );
  }
 
  // @override
  // void dispose() {
  //   videoPlayerController.dispose();
  //   super.dispose();
  // }
 
}