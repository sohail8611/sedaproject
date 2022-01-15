



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
  int index=0;
  late VideoPlayerController videoPlayerController;
  late VideoPlayerController videoPlayerController1;
  late VideoPlayerController videoPlayerController2;
  late VideoPlayerController videoPlayerController3;
  late VideoPlayerController videoPlayerController4;
  late VideoPlayerController videoPlayerController5;
  late Future<void> videoPlayerFuture;
  List<bool> _selections = List.generate(3, (_)=> false);
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
        'videos/flutterapp1.mp4');
        videoPlayerController1 = VideoPlayerController.asset(
        'videos/flutterapp1.mp4');
        videoPlayerController2 = VideoPlayerController.asset(
        'videos/flutterapp1.mp4');
        // videoPlayerController3 = VideoPlayerController.asset(
        // 'videos/flutterapp1.mp4');
        // videoPlayerController4 = VideoPlayerController.asset(
        // 'videos/flutterapp1.mp4');
        // videoPlayerController5 = VideoPlayerController.asset(
        // 'videos/flutterapp1.mp4');

    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);

    videoPlayerFuture = videoPlayerController1.initialize();
    videoPlayerController1.setLooping(true);

    videoPlayerFuture = videoPlayerController2.initialize();
    videoPlayerController2.setLooping(true);

    // videoPlayerFuture = videoPlayerController3.initialize();
    // videoPlayerController3.setLooping(true);

    // videoPlayerFuture = videoPlayerController4.initialize();
    // videoPlayerController4.setLooping(true);

    // videoPlayerFuture = videoPlayerController5.initialize();
    // videoPlayerController5.setLooping(true);

    
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFe6e6e6), 
      
    
      body:SingleChildScrollView(
        
        
        // alignment: Alignment.bottomLeft,
        
        
        child:Column(children: [

        Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          SizedBox(height:30,),
            Image.asset("images/logo_1.jpg",width: 150),
            SizedBox(height:30,)
            
        ],),),
        IndexedStack(index:index,children: [

        
        Container(
          
          margin: EdgeInsets.only(left: 10,right: 10),
          padding: EdgeInsets.only(left:3,right: 3),
          
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(120),
            
            color: Colors.white,
          ),
          child: Column(children: [
          
      ClipRRect(
        
        borderRadius: BorderRadius.circular(15),child: Column(children: [ 
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
        ),],),),
       
              

        
         


        

      
      ],),),


      
      
      Container(child:Column(children: [

        Text("3D")
      //  Container(
      //     margin: EdgeInsets.only(left: 10,right: 10),
      //     padding: EdgeInsets.only(left:3,right: 3),
          
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(120),
            
      //       color: Colors.white,
      //     ),
      //     child: Column(children: [

      //   FutureBuilder(
 
      //     future: videoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: videoPlayerController1.value.aspectRatio,
      //           child: VideoPlayer(videoPlayerController1),
      //         );
      //       } else {
      //         return Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
       
      // ],),),

      ],),),

      Container(child:Column(children: [

        Text("Front View")
       //  Container(
      //     margin: EdgeInsets.only(left: 10,right: 10),
      //     padding: EdgeInsets.only(left:3,right: 3),
          
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(120),
            
      //       color: Colors.white,
      //     ),
      //     child: Column(children: [

      //   FutureBuilder(
 
      //     future: videoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: videoPlayerController1.value.aspectRatio,
      //           child: VideoPlayer(videoPlayerController1),
      //         );
      //       } else {
      //         return Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
       
      // ],),),


      ],),),

      Container(child:Column(children: [


          Text("Rear View"),
       //  Container(
      //     margin: EdgeInsets.only(left: 10,right: 10),
      //     padding: EdgeInsets.only(left:3,right: 3),
          
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(120),
            
      //       color: Colors.white,
      //     ),
      //     child: Column(children: [

      //   FutureBuilder(
 
      //     future: videoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: videoPlayerController1.value.aspectRatio,
      //           child: VideoPlayer(videoPlayerController1),
      //         );
      //       } else {
      //         return Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
       
      // ],),),


      ],),),

      Container(child:Column(children: [


        Text("Right Bird View"),
        //  Container(
      //     margin: EdgeInsets.only(left: 10,right: 10),
      //     padding: EdgeInsets.only(left:3,right: 3),
          
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(120),
            
      //       color: Colors.white,
      //     ),
      //     child: Column(children: [

      //   FutureBuilder(
 
      //     future: videoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: videoPlayerController1.value.aspectRatio,
      //           child: VideoPlayer(videoPlayerController1),
      //         );
      //       } else {
      //         return Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
       
      // ],),),


      ],),),

      Container(child:Column(children: [

        Text("Left Bird View"),
        //  Container(
      //     margin: EdgeInsets.only(left: 10,right: 10),
      //     padding: EdgeInsets.only(left:3,right: 3),
          
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(120),
            
      //       color: Colors.white,
      //     ),
      //     child: Column(children: [

      //   FutureBuilder(
 
      //     future: videoPlayerFuture,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return AspectRatio(
      //           aspectRatio: videoPlayerController1.value.aspectRatio,
      //           child: VideoPlayer(videoPlayerController1),
      //         );
      //       } else {
      //         return Center(child: CircularProgressIndicator());
      //       }
      //     },
      //   ),
       
      // ],),),

      ],),),
      

      



      
      ],),




      //buttons

      Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
          padding: EdgeInsets.only(left:3,right: 3),
        
        child: Column(children: [

        
      SingleChildScrollView(
        
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

        OutlinedButton(
          
          style: OutlinedButton.styleFrom(
            
                  // MediaQuery.of(context).size.width
           
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         
                         minimumSize: Size(1, 1),
                         

          ),
child: Container(child: Column(children: [
      Icon(Icons.view_in_ar,size: 20,),
      Text("2D",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),    onPressed: () {
      setState(() {
        index=0;
        
      });
    },
  ),
  OutlinedButton(

    style: OutlinedButton.styleFrom(
                  // MediaQuery.of(context).size.width
           
                        //  side: BorderSide(color:Colors.white54),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         minimumSize: Size(1, 1),
                         

          ),

child: Container(child: Column(children: [
      Icon(Icons.view_carousel_sharp,size: 20,),
      Text("3d",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),    onPressed: () {
      setState(() {
        index=1;
        
      });
    },
  ),
  OutlinedButton(

    style: OutlinedButton.styleFrom(
                  // MediaQuery.of(context).size.width
           
                        //  side: BorderSide(color:Colors.blue),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         minimumSize: Size(1, 1),
                         

          ),

      child: Container(child: Column(children: [
      Icon(Icons.arrow_upward_rounded,size: 20,),
      Text("FV",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),    onPressed: () {
      setState(() {
        index=2;
        
      });
    },
  ),
  OutlinedButton(

    style: OutlinedButton.styleFrom(
                  // MediaQuery.of(context).size.width
           
                        //  side: BorderSide(color:Colors.blue),
padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         minimumSize: Size(1, 1),                          
                         

          ),

    child: Container(child: Column(children: [
      Icon(Icons.arrow_upward_rounded,size: 20,),
      Text("RV",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),
    onPressed: () {
      setState(() {
        index=3;
      });
    },
  ),
  OutlinedButton(

    style: OutlinedButton.styleFrom(
                  // MediaQuery.of(context).size.width
           
                        //  side: BorderSide(color:Colors.blue),
padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         minimumSize: Size(1, 1),                          
                         

          ),


      child: Container(child: Column(children: [
      Icon(Icons.arrow_upward_rounded,size: 20,),
      Text("RV",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),    onPressed: () {
      setState(() {
        index=4;
      });
    },
  ),
  OutlinedButton(

    style: OutlinedButton.styleFrom(
                  // MediaQuery.of(context).size.width
                        
                        //  side: BorderSide(color:Colors.blue),
padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         minimumSize: Size(1, 1),                         
                         
                         

          ),


      child: Container(child: Column(children: [
      Icon(Icons.arrow_upward_rounded,size: 20,),
      Text("LV",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
    ],),),    onPressed: () {
      setState(() {
        index=5;
      });
    },
  )


      ],),),],),),

      ////play pause video button
      SizedBox(height:20),
      TextButton(
          onPressed: () {
            setState(() {
              videoPlayerController.value.isPlaying
                  ? videoPlayerController.pause()
                  : videoPlayerController.play();
              //  videoPlayerController1.value.isPlaying
              //     ? videoPlayerController1.pause()
              //     : videoPlayerController1.play();
              //  videoPlayerController2.value.isPlaying
              //     ? videoPlayerController2.pause()
              //     : videoPlayerController2.play();
              //   videoPlayerController3.value.isPlaying
              //     ? videoPlayerController3.pause()
              //     : videoPlayerController3.play();
              //   videoPlayerController4.value.isPlaying
              //     ? videoPlayerController4.pause()
              //     : videoPlayerController4.play();
              //   videoPlayerController5.value.isPlaying
              //     ? videoPlayerController5.pause()
              //     : videoPlayerController5.play();
              
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

     

        
      ],),),  
        
        
        );
  }
 
  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
 
}

