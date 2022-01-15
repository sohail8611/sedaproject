







import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class VideoList  extends StatelessWidget {
  const VideoList ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
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

                 
                 

                 Container(
                   
                   
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(left: 12,right: 12),
                 decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,           
                 ),

                 
                 

                child:Column(children: [
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [


                  Container(child: Row(children: [

                  Icon(Icons.ondemand_video_rounded,size: width*0.07,),
                  SizedBox(width: 10,height: 80,),
                  Text("Video List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),),

                  ],),),


                  
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    

                    
                    
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Total",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
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







                  Container(
                    


                  

                  

                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

                   Container(child: Column(children: [
                     
                     
                         Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032),),
                         SizedBox(height: 12,),

                         for (var i=1;i<15;i++)Container(
                           height: 30,
                           child: Column(children: [
                             
                             SizedBox(height: 7,),
                             Text("2022-01-22",style: TextStyle(fontSize: width*0.032),),
                             
                           ],),
                         )
                         

                   ],),),
                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                         Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                        for (var i=1;i<15;i++)Container(
                          height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text("20:22:53~23:50:20",style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                        

                   ],),),

                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                         Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                          for (var i=1;i<15;i++)Container(
                            height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text("driving",style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                       

                   ],),),

                   SizedBox(width: 5,),
                    Container(child: Column(children: [
                         Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                         for (var i=1;i<15;i++)Container(
                           height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                             Text("1.6M",style: TextStyle(fontSize: width*0.032),)
                             
                           ],),
                         )
                       
                   ],),),

                   
                    Container(child: Column(children: [
                         Text("Download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
                          SizedBox(height: 12,),
                         for (var i=1;i<15;i++)Container(
                           height: 30,
                           child: Column(children: [
                             SizedBox(height: 7,),
                              Icon(Icons.download_for_offline,size: width*0.04,)                             
                           ],),
                         )
                       

                   ],),)
                  
                   


                 ],),

                 

                 


                 )],),), 


                 
                 

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