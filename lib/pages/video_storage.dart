







import 'dart:html';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';




class VideoStorage extends StatefulWidget {
  const VideoStorage({ Key? key }) : super(key: key);

  @override
  _VideoStorageState createState() => _VideoStorageState();
}

class _VideoStorageState extends State<VideoStorage> {
  bool chkboxval=false;
  @override
  Widget build(BuildContext context) {
      
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        var date_list =["2022-21-2","2022-10-10"];
        var time_list=['20:50:21~23:10:47',"10:02:23~15:10:22"];
        var event_list=['driving',"driving"];
        var size_list=['1.6M',"1.6M"];
        var download_link_list=['httpgoogle.com','http://downloadvideo.com'];
        
      ///Alert
        _rfluttercustomalert(context) {

        
    Alert(
      context: context,
      // type: AlertType.info,
      // closeIcon: Icon(Icons.download),
      content: SingleChildScrollView(scrollDirection: Axis.horizontal,

        child: Row(children: [
          Icon(Icons.play_arrow_rounded,size: 50,),

          Text("Do you want to download the video?",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),

        
        ],),
      ),
      
      padding: EdgeInsets.zero,
      
      
      buttons: [
        DialogButton(
          child: Text(
            "Yes",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.blue,
        ),
        DialogButton(
          child: Text(
            "No",
            style: TextStyle(color: Colors.white, fontSize: 16,),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.blue,
          ),
        
      ],
    ).show();
  }
        
    return Scaffold(
      backgroundColor: Color(0xFFe6e6e6),
      body: Align(
        
        alignment: Alignment.topCenter,
        
        child:SingleChildScrollView(
          

            ///From here
          child: Column(
            
            

            children: [
               SizedBox(height: 30,),
                 
                 Image.asset("images/logo_1.jpg",width: 150),

                 SizedBox(height: 30,),

                 
                 
                SingleChildScrollView(scrollDirection: Axis.horizontal,child: Column(children: [

                
                 Container(
                   
                   
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 12,right: 12),
                 decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,           
                 ),

                 
                 

                child:Column(children: [
                  ////Video List icon and buttons row here
                  Container(color: Colors.white,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [


                  Container(child: Row(children: [

                  Icon(Icons.folder_open,size: width*0.07,),
                  SizedBox(width: 5,height: 80,),
                  Text("Video Storage",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),),

                  ],),),
                  SizedBox(width: 10,height: 80,),


                  
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    

                    
                    
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Total",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed'),
                       
                  _onBasicAlertPressed(context)
                       
                       
                       
                       }                       
                      ,),

                      SizedBox(width:2),



                      OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("driving",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),

                    SizedBox(width:2),

                      OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("parking",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),
                      SizedBox(width:2),

                       OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("event",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),



                       





                  ],),)
              




                  ],),),





                //// Table box here
                  SingleChildScrollView(child: Column(children: [

                 
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.topCenter,
                    height: height*0.6,
                    


                  

                  

                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                   SingleChildScrollView(scrollDirection: Axis.vertical,child: Row(children: [
                     
                  
                  Container(child: Column(children: [
                     
                     
                       
                          
        
                         

                   ],),),

                   Container(child: Column(children: [
                     Transform.scale(
              scale: 1,
              
              child: Checkbox(
                value: chkboxval, 
                onChanged: (value) { setState(() {  
                            if (chkboxval == false){
                                  chkboxval=true;
                    } else if(chkboxval == true){
                      chkboxval=false;
                    };
                    } ); },
                 
        
          
      
                side: BorderSide(color: Color(0xFF0D47A1),width: 0.8),
                
                
                
                ),
            ),

          
               SizedBox(height: 8,),

                         for (var i=1;i<40;i++)Container(
                           height: 30,
                           
                          child: Row(
          children: [
            Transform.scale(
              scale: 1,
              
              child: Checkbox(
                value: chkboxval, 
                onChanged: (value) {  },
                side: BorderSide(color: Color(0xFF0D47A1),width: 0.8),
                
                
                
                ),
            ),
            
          ],
        ),
                         )
                   ],),),

                   Container(child: Column(children: [
                     
                       
                        
                         Text("Dates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032),),
                         SizedBox(height: 12,),

                         for (var i=1;i<40;i++)Container(
                           height: 30,
                           child: Column(children: [
                             
                             SizedBox(height: 7,),
                             Text(date_list[0],style: TextStyle(fontSize: width*0.032),),
                             
                           ],),
                         )
                         

                   ],),),
                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                         Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                        for (var i=1;i<40;i++)Container(
                          height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text(time_list[0],style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                        

                   ],),),

                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                         Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                          for (var i=1;i<40;i++)Container(
                            height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text(event_list[0],style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                       

                   ],),),

                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                      
                         Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                         for (var i=1;i<40;i++)Container(
                           height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text(size_list[0],style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                       
                   ],),),

                   SizedBox(width: 12,),
                    Container(child: Column(children: [
                         Text("Play",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 8,),
                         for (var i=1;i<40;i++)Container(
                           height: 30,
                           child: Column(children: [
                             SizedBox(height: 9,),
                                           IconButton(padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
                                          onPressed: (){
                                             print("pressed");
                                            _rfluttercustomalert(context);
                                          }, 


                                          icon: Icon(Icons.play_arrow_rounded),
                                          iconSize: 18,)
                      //                       OutlinedButton( 
                      //  style: OutlinedButton.styleFrom(
                      //    primary: Color(0xFF0D47A1),
                      //   //  side: BorderSide(color:Colors.blue),
                      //   //  padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                      //    minimumSize: Size(1, 1)
                      //  ),
                      //  child: Icon(Icons.download_sharp,size: 10,),
                      //  onPressed:()=> {print('pressed')}                       
                      // ,),      
                                     
                           ],),
                         ),
                         

                       

                   ],),)
                  
                   


                 ],),

                 

                 


                 ) ],),),],),), 
                 
                ///Delete button
                 Container(width: width*0.9,child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                   Icon(Icons.restore_from_trash_sharp,color: Colors.blue,),
                   OutlinedButton( 
                      
                       style: OutlinedButton.styleFrom(
                         primary: Colors.blue,
                         backgroundColor: Colors.blue,
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("delete",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold,color: Colors.white),),
                       onPressed:()=> {print('pressed delete')}                       
                      ,),
                 ],),)
                 
                 
                 ],),
                 
                 
                 ), ],),),


                 
                 

                  // SizedBox(height: 20,),
                
                  // Container(
                 
                  // height: height*0.8,
                  // width: width*0.95,
                  // padding: EdgeInsets.all(16.0),
                  // margin:  EdgeInsets.all(0.0),
                  //     decoration: BoxDecoration(
    
                  // borderRadius: BorderRadius.circular(20),
                  // color: Colors.white,
                  
                 
                  //     ))
           
            ],


          ),
          ///till here


          




        
      ))
    );
  }
}

class _onBasicAlertPressed {
  _onBasicAlertPressed(BuildContext context);
}

