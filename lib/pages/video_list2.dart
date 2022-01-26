







import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';









class VideoList extends StatelessWidget {
  const VideoList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var date=['2022-21-01','2022-10-02'];
    var time=['20:53:20~23:32:10','12:32:20~219:12:12'];
    var event=['driving','static'];
    var filesize=['1.6M','2.5M'];
    var downloadurls=['http://respberrypidownload.com','http://downloadvideo.com'];

    return Scaffold(

        
        body: Container(
          width: width*1,
          height: height*1,
          // color: Colors.red,
          color: Color(0xFFe6e6e6),


          
          child: SingleChildScrollView(
          child: Column(children: [
           
            Container(
              margin: EdgeInsets.only(top: height*0.07,bottom: height*0.05),
              width: width*1,
              child: Column(children: [

                Image.asset("images/logo_1.jpg",width: width*0.5),
                
              ],),
   
              ),


              SingleChildScrollView(child: Column(children: [ 
              Container(
                
                width: width*0.94,
                height: height*0.75,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                    

                ),
              
               child: Column(children: [
                  
                  Container(
                    
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      
                      Container(
                        
                       child: Row(children: [
                        Icon(Icons.ondemand_video_outlined,size: width*0.08,),
                        SizedBox(width: 7,),
                        Text("Video List",style: TextStyle(fontWeight: FontWeight.w500,fontSize: width*0.05),)

                      ],),),

                      
                      Container(margin: EdgeInsets.only(top:1),child: Row(children: [


                          //outlined button starts here
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,                         
                                              padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                              minimumSize: Size(width*0.05, 10),
                                              side: BorderSide(width: 1.0, color: Colors.blue),
                                              ),
                                              
                          child: Container(child: Column(children: [
                                
                                      Text("Total",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],),),    onPressed: () {},
                              ),
                              SizedBox(width: 2.5,),
                               OutlinedButton(

                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            
                                              padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                              minimumSize: Size(width*0.05, 10),
                                              side: BorderSide(width: 1.0, color: Colors.blue),
                                              ),
                                              
                          child: Container(child: Column(children: [
                                
                                      Text("Driving",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],),),    onPressed: () {},
                              ),
                                SizedBox(width: 2.5,),
                               OutlinedButton(

                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            
                                              padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                              minimumSize: Size(width*0.05, 10),
                                              side: BorderSide(width: 1.0, color: Colors.blue),
                                              ),
                                              
                          child: Container(child: Column(children: [
                                
                                      Text("Parking",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],),),    onPressed: () {},
                              ),
                                SizedBox(width: 2.5,),
                               OutlinedButton(

                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            
                                              padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                              minimumSize: Size(width*0.05, 10),
                                              side: BorderSide(width: 1.0, color: Colors.blue),
                                              ),
                                              
                          child: Container(child: Column(children: [
                                
                                      Text("Event",style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03),)
                              ],),),    onPressed: () {},
                              ),


                      ],),)

                      

                  ],),),

              //////Making Manual Table . and it stars here 
              ///
                  Container(margin: EdgeInsets.only(top:height*0.07,bottom: 0),child: Column(children: [

                  SingleChildScrollView(scrollDirection: Axis.horizontal,child: Column(children: [
                      
                  
                 Container(
                  //Scrollable container
                  //Please adjust height and width yourself 
                  //You can use media query parameters to make it responsive
                  // width: 200,
                  height: height*0.5,
                  // color: Colors.green,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    
                    //You can also change the scroll direction
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //Add children you want to be in
                      //Scrollable column
                      
                     children: [

                       Container(child: Column(children: [
                        Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03),),
                        SizedBox(height: 10),
                        for (int i=1;i<100;i++)Container(
                          height: 30,
                          child: Column(children: [
                            Text(date[0],style: TextStyle(fontSize: width*0.03),)
                          ],),
                        )
                       ],),),

                      SizedBox(width: 10,),

                       Container(child: Column(children: [
                        Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03),),
                        SizedBox(height: 10),
                        for (int i=1;i<100;i++)Container(
                          height: 30,
                          child: Column(children: [
                            Text(time[1],style: TextStyle(fontSize: width*0.03),)
                          ],),
                        )
                       ],),),

                         SizedBox(width: 10,),
                        Container(child: Column(children: [
                        Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03),),
                        SizedBox(height: 10),
                        for (int i=1;i<100;i++)Container(
                          height: 30,
                          child: Column(children: [
                            Text(event[0],style: TextStyle(fontSize: width*0.03),)
                          ],),
                        )
                       ],),),

                        SizedBox(width: 10,),

                        Container(child: Column(children: [
                        Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03),),
                        SizedBox(height: 10),
                        for (int i=1;i<100;i++)Container(
                          height: 30,
                          child: Column(children: [
                            Text(filesize[0],style: TextStyle(fontSize: width*0.03),)
                          ],),
                        )
                       ],),),

                        SizedBox(width: 10,),

                        Container(child: Column(children: [
                        Text("Download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.03),),
                        SizedBox(height: 10),
                        for (int i=1;i<100;i++)Container(
                          height: 30,
                          child: Column(children: [

                            OutlinedButton(

                             style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                         minimumSize: Size(1, 1),               
          ),
                        child: Container(child: Column(children: [

                              Icon(Icons.download),
                            ],),),    onPressed: () {
                              
                            },
                          ),
                            // Icon(Icons.download,size: 20,)



                          ],),
                        )
                       ],),),



                       

                     ],
                     
                     
                      
                    ),
                    
                  ),
                  
                )],),)],),), 

              //////Manual Table Ends here
              Container(margin: EdgeInsets.only(top: 10),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                
                Text("Scroll Down",style: TextStyle(fontSize: 10),),Icon(Icons.swap_vert_circle_outlined,color: Colors.grey,size: 15,),
              ],),)
               ],)



                
                )],),),
              



          ],),)
          
          
         




        ),




      
    );
  }
}



// class VideoList  extends StatelessWidget {
//   const VideoList ({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//         double height = MediaQuery.of(context).size.height;
//         var date_list =["2022-21-2","2022-10-10"];
//         var time_list=['20:50:21~23:10:47',"10:02:23~15:10:22"];
//         var event_list=['driving',"driving"];
//         var size_list=['1.6M',"1.6M"];
//         var download_link_list=['httpgoogle.com','http://downloadvideo.com'];
      
//     return Scaffold(
//       backgroundColor: Color(0xFFe6e6e6),
//       body: Align(
        
//         alignment: Alignment.topCenter,
        
//         child:SingleChildScrollView(

//             ///From here
//           child: Column(
            

//             children: [
//                SizedBox(height: 30,),
                 
//                  Image.asset("images/logo_1.jpg",width: 150),

//                  SizedBox(height: 30,),

                 
                 

//                  Container(
                   
                   
//                     padding: EdgeInsets.all(12),
//                     margin: EdgeInsets.only(left: 12,right: 12),
//                  decoration: BoxDecoration(
                   
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,           
//                  ),

                 
                 

//                 child:Column(children: [
//                   Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [


//                   Container(child: Row(children: [

//                   Icon(Icons.ondemand_video_rounded,size: width*0.07,),
//                   SizedBox(width: 10,height: 80,),
//                   Text("Video List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),),

//                   ],),),


                  
//                   Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    

                    
                    
//                      OutlinedButton( 
//                        style: OutlinedButton.styleFrom(
//                          primary: Color(0xFF0D47A1),
//                          side: BorderSide(color:Colors.blue),
//                          padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
//                          minimumSize: Size(1, 1)
//                        ),
//                        child: Text("Total",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
//                        onPressed:()=> {print('pressed')}                       
//                       ,),

//                       SizedBox(width:2),



//                       OutlinedButton( 
//                        style: OutlinedButton.styleFrom(
//                          primary: Color(0xFF0D47A1),
//                          side: BorderSide(color:Colors.blue),
//                          padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
//                          minimumSize: Size(1, 1)
//                        ),
//                        child: Text("driving",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
//                        onPressed:()=> {print('pressed')}                       
//                       ,),

//                     SizedBox(width:2),

//                       OutlinedButton( 
//                        style: OutlinedButton.styleFrom(
//                          primary: Color(0xFF0D47A1),
//                          side: BorderSide(color:Colors.blue),
//                          padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
//                          minimumSize: Size(1, 1)
//                        ),
//                        child: Text("parking",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
//                        onPressed:()=> {print('pressed')}                       
//                       ,),
//                       SizedBox(width:2),

//                        OutlinedButton( 
//                        style: OutlinedButton.styleFrom(
//                          primary: Color(0xFF0D47A1),
//                          side: BorderSide(color:Colors.blue),
//                          padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
//                          minimumSize: Size(1, 1)
//                        ),
//                        child: Text("event",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
//                        onPressed:()=> {print('pressed')}                       
//                       ,),



                       





//                   ],),)
              




//                   ],),),







//                   Container(
                    


                  

                  

//                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [

//                    Container(child: Column(children: [
                     
                     
//                          Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032),),
//                          SizedBox(height: 12,),

//                          for (var i=1;i<15;i++)Container(
//                            height: 30,
//                            child: Column(children: [
                             
//                              SizedBox(height: 7,),
//                              Text(date_list[0],style: TextStyle(fontSize: width*0.032),),
                             
//                            ],),
//                          )
                         

//                    ],),),
//                    SizedBox(width: 5,),
//                     Container(child: Column(children: [
//                          Text("Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
//                           SizedBox(height: 12,),
//                         for (var i=1;i<15;i++)Container(
//                           height: 30,
//                            child: Column(children: [
//                              SizedBox(height: 7,),
//                              Text(time_list[0],style: TextStyle(fontSize: width*0.032),)
                             
//                            ],),
//                          )
                        

//                    ],),),

//                    SizedBox(width: 5,),
//                     Container(child: Column(children: [
//                          Text("Event",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
//                           SizedBox(height: 12,),
//                           for (var i=1;i<15;i++)Container(
//                             height: 30,
//                            child: Column(children: [
//                              SizedBox(height: 7,),
//                              Text(event_list[0],style: TextStyle(fontSize: width*0.032),)
                             
//                            ],),
//                          )
                       

//                    ],),),

//                    SizedBox(width: 5,),
//                     Container(child: Column(children: [
//                          Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
//                           SizedBox(height: 12,),
//                          for (var i=1;i<15;i++)Container(
//                            height: 30,
//                            child: Column(children: [
//                              SizedBox(height: 7,),
//                              Text(size_list[0],style: TextStyle(fontSize: width*0.032),)
                             
//                            ],),
//                          )
                       
//                    ],),),

                   
//                     Container(child: Column(children: [
//                          Text("Download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.032)),
//                           SizedBox(height: 12,),
//                          for (var i=1;i<15;i++)Container(
//                            height: 30,
//                            child: Column(children: [
//                              SizedBox(height: 7,),
//                               Icon(Icons.download_for_offline,size: width*0.04,)                             
//                            ],),
//                          )
                       

//                    ],),)
                  
                   


//                  ],),

                 

                 


//                  )],),), 


                 
                 

//                   // SizedBox(height: 20,),
                
//                   // Container(
                 
//                   // height: height*0.8,
//                   // width: width*0.95,
//                   // padding: EdgeInsets.all(16.0),
//                   // margin:  EdgeInsets.all(0.0),
//                   //     decoration: BoxDecoration(
    
//                   // borderRadius: BorderRadius.circular(20),
//                   // color: Colors.white,
                  
                 
//                   //     ))
           
//             ],


//           ),
//           ///till here


          




        
//       ))
//     );
//   }
// }