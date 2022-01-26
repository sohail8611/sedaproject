

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'network_settings.dart';
import '../main.dart';

//Button that can be on/off . comes from this class
class SwitchScreen extends StatefulWidget {  
  
  @override  
  SwitchClass createState() => new SwitchClass();  
}  
class SwitchClass extends State {  
  bool isSwitched = false;  
  var textValue = 'off';  

  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      
      setState(() {  
        isSwitched = true;  
        textValue = 'on'; 
          
      });  
      // print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false; 
        textValue = 'off';  
          
      });  
      // print('Switch Button is OFF');  
    }  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      // color: Colors.red,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
        child: Row( 
        mainAxisAlignment: MainAxisAlignment.end,  
        children:[ 
          Text('$textValue', style: TextStyle(fontSize: 12),)  ,
          Transform.scale(
            
              
            scale: 0.7,  
            child: SizedBox(
              width: 35,
              height: 10,
            child: Switch(  
              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: toggleSwitch,  
              value: isSwitched,  
              
              activeColor: Colors.white,  
              activeTrackColor: Colors.blue,  
              inactiveThumbColor: Colors.white,  
              inactiveTrackColor: Colors.black38,  
            )  ),
          ),  
          
        ]),);  
  }  
}


//Main Settings statefull widget
class Settings extends StatefulWidget {
  
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index=0;
  int selectedlevel=0;
  bool level1pressed = true;
  bool level2pressed = false;
  bool level3pressed = false;
  bool level4pressed = false;
  bool level5pressed = false;
  
  String storage_info="Built in";
  bool storage_info_builtin=true;
  bool storage_info_external=false;

  String parking_level="1";
    bool p1=true;
    bool p2=false;
    bool p3=false;
    bool p4=false;
    bool p5=false;

  String video_length="1";
      bool vl1=true;
      bool vl2=false;
      bool vl3=false;

  String video_resolution="Low";
      bool vr1=true;
      bool vr2=false;
      bool vr3=false;
//Display
  bool d1=true;
  bool d2=false;
  bool d3=false;
  bool d4=false;
  bool d5=false;
  bool d6=false;

double slider1value=50;
double slider2value=50;
double slider3value=50;
double slider4value=50;


bool veh1=true;
bool veh2=false;
bool veh3=false;

bool displayntsc=true;
bool displaypal=false;
  

  String currentvibrationlevelselected="Level 1";
  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFe6e6e6),
      body: SingleChildScrollView(child:Container(width: width*1,child: Column(children: [
        

          //Logo Container
          Container(margin: EdgeInsets.only(top: height*0.08),child: Column(children: [
            Image.asset("images/logo_1.jpg",width: 150),
          ],),),
          //Main white Container
          Container(
            margin: EdgeInsets.only(top: 25,bottom: 10),
            width: width*0.95,
            
            height: height*0.76,
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,),
           
            child: Column(children: [
              //Setting Icon and title
              Container(margin: EdgeInsets.only(top: 25,left: 25),child: Row(children: [
                Icon(Icons.settings_rounded),
                SizedBox(width: 10,),
                Text("Setting",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)

              ],),),

              //This Container Contain all the left and right column things 
              Container(height: height*0.66,child: Row(children: [

                
                //Left Column Container that contains the main buttons(e.g dvr,display etc)
                Container(
                alignment: Alignment.topLeft,
                
                margin: EdgeInsets.only(top: 0,left: 20),
                height: height*0.55,
                width: width*0.35,
                padding: EdgeInsets.only(left: 10,top: 25),
                 decoration: BoxDecoration(color: Color(0xFFe6e6e6), borderRadius: BorderRadius.circular(10),),
                   
                   
                //Left Column Buttons(e.g dvr,calibration,network,display etc)
                child: Column(children: [
                  //DVR OPTION Button
                  Container(height:25,child: Row(children: [
                    Icon(Icons.catching_pokemon_rounded,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("DVR Option",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> {

                         setState(() {
                          // Toggle light when tapped.
                         
                          index=0;

                        })
                       }                       
                      ,),
                  ],),)  ,
                 
                  //Calibration Button
                   Container(height:25,child: Row(children: [
                    Icon(Icons.border_all_rounded,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Calibration",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> {setState(() {              
                          index=10;

                        })}                       
                      ,),
                  ],),)  ,
                 
                  //Network Button ( This button sent you to new page.)
                   Container(height:25,child: Row(children: [
                    Icon(Icons.network_cell_rounded,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Network",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NetworkSettings()),
  ),}                       
                      ,),
                  ],),)  ,
                   
                    //Display Button
                   Container(height:25,child: Row(children: [
                    Icon(Icons.tv,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Display",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> {
                         setState(() {
                          // Toggle light when tapped.
                         
                          index=8;

                        })
                       }                       
                      ,),
                  ],),)  ,
                   
                    //Brightness button
                   Container(height:25,child: Row(children: [
                    Icon(Icons.brightness_5_outlined,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Brightness",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> {setState(() {
                          // Toggle light when tapped.
                         
                          index=9;

                        })}                       
                      ,),
                  ],),)  ,
                   
                    //Engr Mode Button
                   Container(height:25,child: Row(children: [
                    Icon(Icons.engineering_rounded,size: width*0.038,),
                    SizedBox(width: 5,),
                     OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFFe6e6e6),
                         side: BorderSide(width: 0, color: Color(0xFFe6e6e6)),
                        //  side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.02,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Engr Mode",style: TextStyle(fontSize: width*0.033,color: Colors.black54),),
                       onPressed:()=> { setState(() {
                          index=11;
                         

                        })}                       
                      ,),
                  ],),)  ,



                 
                ],),),

                //Right Side View Inside this ( Right Column )
                Expanded(
                child:Container(
                height: height*0.56,
                margin: EdgeInsets.only(top: 8),
                child: SingleChildScrollView(child:Column(children: [

                  //Right Column Changes State based on this indexedStack
                  IndexedStack(index: index,children: [
                  //Note: Gesture make the whole row clickable. 
                  //Index=0 (DVR Option Clicked by default)
                   Container(margin: EdgeInsets.all(10),child: Column(children: [

                     //Recording Mode Row
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Recording Mode",style: TextStyle(fontSize: width*0.031),),
                     
                        //  Text("on"),
                         SwitchScreen()
                      
                       
                     ],),),),
                     SizedBox(height:2),

                    //row
                    
                    //Vibration Level Row
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          
                          index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Vibration Level",style: TextStyle(fontSize: width*0.031),),
                       Text(currentvibrationlevelselected,style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03),)
                     ],),),),
                     SizedBox(height:2),


                    //Storage Mode Row
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Storage mode tapped");
                          index=2;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Storage Mode",style: TextStyle(fontSize: width*0.031),),
                       Text(storage_info,style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03)),
                     ],),),),
                     SizedBox(height:2),

                      //Parking Mode FPS Row
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=3;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Parking Mode FPS",style: TextStyle(fontSize: width*0.031),),
                       Text(parking_level+" FPS",style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03))
                     ],),),),
                     SizedBox(height:2),

                      //Video Length Row
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=4;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Video Length",style: TextStyle(fontSize: width*0.031),),
                       Text(video_length+" Min",style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03))
                     ],),),),
                     SizedBox(height:2),

                    //Video Resolution Row
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=5;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Video Resolution",style: TextStyle(fontSize: width*0.031),),
                       Text(video_resolution,style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03))
                     ],),),),
                     SizedBox(height:2),

                      //Format Row
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=6;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Format",style: TextStyle(fontSize: width*0.031),),
                      Text("Format Storage",style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.028))
                     ],),),),
                     SizedBox(height:2),


                      //Time Row
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=7;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Time",style: TextStyle(fontSize: width*0.031),),
                       Text("YY/MM/DD/HH/MM",style: TextStyle(color: Color(0xFF0D47A1),fontSize: width*0.03))
                     ],),),),
                     SizedBox(height:2),

 
                   ],),),

                   //Index=1 (DVR Option/Vibration Level )
                   Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //Back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Vibration Level",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //Vibration Level 1 button
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          level1pressed = true;
                          level2pressed=false;
                          level3pressed=false;
                          level4pressed=false;
                          level5pressed=false;
                          currentvibrationlevelselected="Level 1";
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Level 1',
                    style: level1pressed
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:level1pressed
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                      //Vibration Level 2 button
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          level2pressed = true;
                          level1pressed=false;
                          level3pressed=false;
                          level4pressed=false;
                          level5pressed=false;
                          currentvibrationlevelselected="Level 2";

                          
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Level 2',
                    style: level2pressed
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:level2pressed
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),
                      
                      //Vibration Level 3 button
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          level3pressed=true;
                          level1pressed = false;
                          level2pressed=false;
                          level4pressed=false;
                          level5pressed=false;
                          currentvibrationlevelselected="Level 3";
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Level 3',
                    style: level3pressed
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:level3pressed
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),

                      //Vibration Level 4 button
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          level3pressed=false;
                          level1pressed = false;
                          level2pressed=false;
                          level4pressed=true;
                          level5pressed=false;
                          currentvibrationlevelselected="Level 4";
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Level 4',
                    style: level4pressed
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:level4pressed
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),

                      //Vibration Level 5 button
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          level3pressed=false;
                          level1pressed = false;
                          level2pressed=false;
                          level4pressed=false;
                          level5pressed=true;
                          currentvibrationlevelselected="Level 5";
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Level 5',
                    style: level5pressed
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:level5pressed
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),




                   ],),),
                  


                   //Index=2 ( DVR Option/Storage Mode)
                    Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //Back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          
                         
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Storage",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //Built-in Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          storage_info="Built-in";
                          storage_info_builtin=true;
                          storage_info_external=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Built-in",
                    style: storage_info_builtin
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:storage_info_builtin
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                      //External Device Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          storage_info="External Device";
                          storage_info_builtin=false;
                          storage_info_external=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "External Device",
                    style: storage_info_external
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:storage_info_external
                    ? 15
                    :0)             
                      ],),),),    

                      
                     




                   ],),),
                    


                  //Index=3 (DVR Option/Parking mode)
                  Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //Back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Parking Mode FPS",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //parking 1 Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          parking_level="1";
                          p1=true;
                          p2=false;
                          p3=false;
                          p4=false;
                          p5=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "1",
                    style: p1
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:p1
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                      ////parking 2 Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          parking_level="2";
                          p1=false;
                          p2=true;
                          p3=false;
                          p4=false;
                          p5=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "2",
                    style: p2
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:p2
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                     

                      ////parking 3 Row ( Button )
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          parking_level="3";
                          p1=false;
                          p2=false;
                          p3=true;
                          p4=false;
                          p5=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "3",
                    style: p3
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:p3
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                     
                      //parking 4 Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          parking_level="4";
                          p1=false;
                          p2=false;
                          p3=false;
                          p4=true;
                          p5=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "4",
                    style: p4
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:p4
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),


                     
                      //parking 5 Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          parking_level="5";
                          p1=false;
                          p2=false;
                          p3=false;
                          p4=false;
                          p5=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "5",
                    style: p5
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:p5
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),




                   ],),),
                  


                  //index=4 (DVR Option/Video Length)
                  Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //Back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Video Length",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //Video Length 1 ( button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          video_length="1";
                          vl1=true;
                          vl2=false;
                          vl3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "1",
                    style: vl1
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vl1
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),
                      //Video Length 1 ( button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         video_length="2";
                          vl1=false;
                          vl2=true;
                          vl3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "2",
                    style: vl2
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vl2
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                     

                      //Video Length 3 ( button )
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         video_length="3";
                          vl1=false;
                          vl2=false;
                          vl3=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "3",
                    style: vl3
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vl3
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),





                   ],),),
                  


                  //index=5 (DVR Option/Video Resolution)
                   Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //Back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Video Resolution",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //Low Resolution Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          video_resolution="Low";
                          vr1=true;
                          vr2=false;
                          vr3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Low",
                    style: vr1
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vr1
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),
                      //Middle Resolution Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          video_resolution="Middle";
                          vr1=false;
                          vr2=true;
                          vr3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Middle",
                    style: vr2
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vr2
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                     

                      //High Resolution Row ( Button )
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          video_resolution="High";
                          vr1=false;
                          vr2=false;
                          vr3=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "High",
                    style: vr3
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:vr3
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),





                   ],),),
                  

                  //index=6 (DVR Option/Format)
                  Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Format",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      
                     
                      //Row
                    Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Format Storage",style: TextStyle(fontSize: width*0.03),
  
                  ),
                   //Date with button
                    Container(child: Row(children: [
                      Text("2022.01.10",style: TextStyle(fontSize: width*0.03)),
                    SizedBox(width: 5),
                    OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Format",style: TextStyle(fontSize: width*0.02,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),


                      

                    ],),)           
                      ],),),                    
                     SizedBox(height:2),



                   ],),),
                   


                   //Index=7 (DVR Option/Time)
                   Container(margin: EdgeInsets.all(10),child: Column(children: [


                     
                      //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=0;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Time",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),


                     //Automatic date time row ( button )
                    Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Automatic Date/Time",style: TextStyle(fontSize: width*0.031),),
                     
                        //  Text("on"),
                         SwitchScreen()
                      
                       
                     ],),),
                     SizedBox(height:2),

                      
                      //Date Row ( input Fields )
                    Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Date",style:TextStyle(fontSize: width*0.031)
                   
                  ),
                  
                                Row(
                children: <Widget>[
                  SizedBox(width: 30,height: 20, child: TextField(
                                  
                decoration: InputDecoration(
                  
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.red, 
                  //   width: 1.0),
                  //   ),
                  
                  hintText: 'YYYY',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              )),

              SizedBox(width: 30,height: 20, child: TextField(
                                  
                decoration: InputDecoration(
                  
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.red, 
                  //   width: 1.0),
                  //   ),
                  
                  hintText: 'MM',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              )),

              SizedBox(width: 30,height: 20, child: TextField(
                                  
                decoration: InputDecoration(
                  
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.red, 
                  //   width: 0.3),
                  //   ),
                  
                  hintText: 'DD',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              )),
                ],
              )       
                   
                              
                      ],),),                  
                     SizedBox(height:2),

                     //Time Row ( Input Fields )
                    Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Time",style:TextStyle(fontSize: width*0.031)
                    ),

                     Row(
                children: <Widget>[
                  SizedBox(width: 30,height: 20,child: TextField(
                                  
                decoration: InputDecoration(
                  
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.red, 
                  //   width: 1.0),
                  //   ),
                  
                  hintText: 'HH',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              )),

              SizedBox(width: 30,height: 20, child: TextField(
                                  
                decoration: InputDecoration(
                  
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.red, 
                  //   width: 0.3),
                  //   ),
                  
                  hintText: 'MM',
                  hintStyle: TextStyle(fontSize: 10),
                ),
              )),
                ],
              )  



                      ],),),                   
                     SizedBox(height:2),

                      

                      
                      





                   ],),),
                  



                   //DVR OPTIONS COMPLETE THINGS ENDS HERE Used Indexes=0,1,2,3,4,5,6,7

                   //Index=8 Display
                    Container(margin: EdgeInsets.all(10),child: Column(children: [

                      //Image Container
                    Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Column(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [


                 Image.asset("images/localimage.jpg",width: 150),
                 Text("1Ch Select View",style: TextStyle(color: Colors.blue),)
                       
                     ],),),
                     SizedBox(height:4),

                      //2D Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          d1=true;
                          d2=false;
                          d3=false;
                          d4=false;
                          d5=false;
                          d6=false;
                          
                          

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                      
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    '2D View',
                    style: d1
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d1
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                      //3D Row ( Button )
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          d1=false;
                          d2=true;
                          d3=false;
                          d4=false;
                          d5=false;
                          d6=false;

                          
                          
                          

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    '3D-View',
                    style: d2
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d2
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),
                      
                      //Front-Bird-View Row ( Button )
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          d1=false;
                          d2=false;
                          d3=true;
                          d4=false;
                          d5=false;
                          d6=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Front Bird View',
                    style: d3
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d3
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),

                      //Rear-Bird-View Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                           d1=false;
                          d2=false;
                          d3=false;
                          d4=true;
                          d5=false;
                          d6=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Rear Bird View',
                    style: d4
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d4
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),

                      //Left-Bird-View Row ( Button )
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                           d1=false;
                          d2=false;
                          d3=false;
                          d4=false;
                          d5=true;
                          d6=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Left Bird View',
                    style: d5
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d5
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),

                    //Right-Bird-View Row ( Button )
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                           d1=false;
                          d2=false;
                          d3=false;
                          d4=false;
                          d5=false;
                          d6=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Right Bird View',
                    style: d6
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:d6
                    ? 15
                    :0)             
                      ],),),),
                     SizedBox(height:2),




                   ],),),


                    //index=9 brightness
                    Container(margin: EdgeInsets.all(10),child: Column(children: [

                      //Image Container
                    Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Column(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [


                 Image.asset("images/truckpic.jpg",width: width*1),

                       
                     ],),),
                     SizedBox(height:4),
                     

                    //sliders Container
                     Container(
                       height:height*0.2,
                      //  color:Colors.red,
                       child: SingleChildScrollView(child: Column(children: [

                     
                     Container(child: Row(children: [
                     

                       Text("Front",style: TextStyle(fontWeight: FontWeight.w400,fontSize: width*0.028),),

                Expanded(child: 
                Container(child: Column(children: [

                          SliderTheme(
                data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue[200],
                trackShape: RectangularSliderTrackShape(),
                
                trackHeight: 2.0,
                thumbColor: Colors.blue,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                
              ),
              child: Slider(
                min: 0,
                max:100,
                value: slider1value,
                onChanged: (value) {
                  setState(() {
                    slider1value = value;
                  });
                },
              ),
            ),

                ],),),)
                       

                     ],),),                   
                    //slider end

                     Container(child: Row(children: [
                       
                       Text("Rear",style: TextStyle(fontWeight: FontWeight.w400,fontSize: width*0.028),),

                Expanded(child: 
                Container(child: Column(children: [

                          SliderTheme(
                data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue[200],
                trackShape: RectangularSliderTrackShape(),
                
                trackHeight: 2.0,
                thumbColor: Colors.blue,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                
              ),
              child: Slider(
                min: 0,
                max:100,
                value: slider2value,
                onChanged: (value) {
                  setState(() {
                    slider2value = value;
                  });
                },
              ),
            ),

                ],),),)
                       

                     ],),),                   


                      Container(child: Row(children: [
                       

                       Text("Left",style: TextStyle(fontWeight: FontWeight.w400,fontSize: width*0.028),),

                Expanded(child: 
                Container(child: Column(children: [

                          SliderTheme(
                data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue[200],
                trackShape: RectangularSliderTrackShape(),
                
                trackHeight: 2.0,
                thumbColor: Colors.blue,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                
              ),
              child: Slider(
                min: 0,
                max:100,
                value: slider3value,
                onChanged: (value) {
                  setState(() {
                    slider3value = value;
                  });
                },
              ),
            ),

                ],),),)
                       

                     ],),),                   


                      Container(child: Row(children: [
                       

                       Text("Right",style: TextStyle(fontWeight: FontWeight.w400,fontSize: width*0.028),),

                Expanded(child: 
                Container(child: Column(children: [

                          SliderTheme(
                data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.blue,
                inactiveTrackColor: Colors.blue[200],
                trackShape: RectangularSliderTrackShape(),
                
                trackHeight: 2.0,
                thumbColor: Colors.blue,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                
              ),
              child: Slider(
                min: 0,
                max:100,
                value: slider4value,
                onChanged: (value) {
                  setState(() {
                    slider4value = value;
                  });
                },
              ),
            ),

                ],),),)
                       

                     ],),),                   
                  
                   ],),),)



                   ],),),



                    //index=10 calibration
                    Container(child:Column(children: [
                    Image.asset("images/newtruck.jpg"),

                    //Buttons Container
                    Container(child:Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                      //New Button
                      OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("New",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),
                      SizedBox(width:10),

                      //Edit Button
                      OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Edit",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),


                    ],))


                    ],)),
                    

                    //index=11 Engr Mode
                    Container(child:Column(children: [

                      
                       Container(margin: EdgeInsets.all(10),child: Column(children: [

                     //Recording Mode Row
                     

                    //row
                    
                    //avoid waiting row(button)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          
                          index=12;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Avoid Waiting",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),


                    //Vehical Model Row(button)
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=13;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Vehical Model",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),

                      //MCU Update Row Button
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=14;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("MCU Update",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),

                      //Display Standards Row ( Button )
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         
                          index=15;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Display Standard",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),

                    //Export Pattern Parameters Row ( Button )
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=16;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Export Pattern Paraameter",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),

                      //Import Pattern Parameters Row ( Button )
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=17;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Import Pattern Parameter",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),

                    //Vehical Size Row ( Button )
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         
                          index=18;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Vehicle Size",style: TextStyle(fontSize: width*0.031),),
                       Icon(Icons.arrow_forward_ios_sharp,size:width*0.033)
                     ],),),),
                     SizedBox(height:2),


                     
                     

 
                   ],),),



                    ],)),


                    //index=12 engineer mode/avoid waiting
                     Container(margin: EdgeInsets.all(10),child: Column(children: [
                       //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/Avoid Waiting",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      
                      //button (fast booting)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       
                       decoration: BoxDecoration(
                         
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Fast Booting",style: TextStyle(fontSize: width*0.031),),
                     
                        //  Text("on"),
                         SwitchScreen()
                      
                       
                     ],),),),
                     SizedBox(height:2),

                    




                   ],),),
                  


                    //index=13 Engineer mode/Vehicle Model
                     Container(margin: EdgeInsets.all(10),child: Column(children: [
                    //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("DVR Option/Vibration Level",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //select vehical 1 buttons
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          veh1 = true;
                          veh2=false;
                          veh3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Navistar',
                    style: veh1
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:veh1
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                  //select vehical 2 buttons
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          veh1 = false;
                          veh2=true;
                          veh3=false;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'International lonestar trailer',
                    style: veh2
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:veh2
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),


                    //select vehical 3 buttons
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          veh1 = false;
                          veh2=false;
                          veh3=true;
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'Seda Skyautonet car',
                    style: veh3
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:veh3
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                     




                   ],),),
                  

                    //index=14 Engineer Mode/MCU Update
                        Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                         
                          
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/MCU Update",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      
                      
                      //Row
                       Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Update",style: TextStyle(fontSize: width*0.03),
  
                  ),
                   
                    Container(child: Row(children: [
                      Text("2022.01.01",style: TextStyle(fontSize: width*0.03)),
                    SizedBox(width: 5),
                    OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("update",style: TextStyle(fontSize: width*0.02,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),


                      

                    ],),)           
                      ],),),                    
                     SizedBox(height:2),





                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                       
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Auto Update System",style: TextStyle(fontSize: width*0.031),),
                     
                        //  Text("on"),
                         SwitchScreen()
                      
                       
                     ],),),),
                     SizedBox(height:2),

                    




                   ],),),
                  
                    //index=15 Engineer Mode/Display Standards
                        Container(margin: EdgeInsets.all(10),child: Column(children: [

                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/Display Standards",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      //NTSC Button
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          
                          displayntsc = true;
                          displaypal=false;
                         
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'NTSC',
                    style: displayntsc
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:displayntsc
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                  //PAL Button
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          
                           displayntsc = false;
                          displaypal=true;
                         
                          
                          // index=1;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    'PAL',
                    style: displaypal
                        ? TextStyle(fontSize: width*0.031,color: Colors.blue)
                        : TextStyle(fontSize: width*0.031),
                  ),
                   
                    Icon(Icons.download_done_sharp,size:displaypal
                    ? 15
                    :0)             
                      ],),),),                    
                     SizedBox(height:2),

                   ],),),
                  
                    //index=16  Engineer Mode/Export pattern
                         Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/Export",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                    
                      
                      //row
                       Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Date",style: TextStyle(fontSize: width*0.03),
  
                  ),
                   
                    Container(child: Row(children: [
                      
                    SizedBox(width: 5),
                    OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Export",style: TextStyle(fontSize: width*0.02,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),


                      

                    ],),)           
                      ],),),                    
                     SizedBox(height:2),





                  

                    




                   ],),),
                  
                  //INDEX=17 Engineer Mode/Import Pattern
                        Container(margin: EdgeInsets.all(10),child: Column(children: [
                      //back button on top
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          print("Vibration Level tapped");
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/Export",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height:4),

                      
                      
                      //Row
                       Container(padding: EdgeInsets.only(bottom:5),
                               decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       
                    new Text(
                    "Date",style: TextStyle(fontSize: width*0.03),
  
                  ),
                   
                    Container(child: Row(children: [
                      
                    SizedBox(width: 5),
                    OutlinedButton( 
                       style: OutlinedButton.styleFrom(
                         primary: Color(0xFF0D47A1),
                         side: BorderSide(color:Colors.blue),
                         padding: EdgeInsets.symmetric(horizontal: width*0.01,vertical: 10),
                         minimumSize: Size(1, 1)
                       ),
                       child: Text("Import",style: TextStyle(fontSize: width*0.02,fontWeight: FontWeight.bold),),
                       onPressed:()=> {print('pressed')}                       
                      ,),

                    ],),)           
                      ],),),                    
                     SizedBox(height:2),

                   ],),),
                  
                    //Index=18 Engineer Mode/Vehicle Size
                     Container(margin: EdgeInsets.all(10),child: Column(children: [

                      GestureDetector(
                      onTap: () {
                      
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Column(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                          
                          index=11;

                        });
                      },
                    child:Container(padding: EdgeInsets.only(bottom:10),
                       decoration: BoxDecoration(
                          border: Border(
                            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),

                       
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Engr Mode/Vehicle Size",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_back_ios,size: width*0.03,color: Colors.blue,),
                     ],),),),
                     SizedBox(height: 4,),


                 Image.asset("images/newtruck1.jpg",width: width*1),

                       
                     ],),),),
                     SizedBox(height:4),
                     

                  
                     Container(
                       height:height*0.2,
                      //  color:Colors.red,
                       child: SingleChildScrollView(child: Column(children: [
                      SizedBox(height:10),


                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                      
                      child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                       Text("Width",style: TextStyle(fontSize: width*0.03),), 
                     SizedBox(
                        width:width*0.13,
                        height:20,
                         child:TextField (  
                           style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold ,),
                           textAlign: TextAlign.center,
                           
                           
                          decoration: InputDecoration(  
                            
                    focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),        

                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                            hintStyle: TextStyle(
                          color: Colors.grey, // <-- Change this
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          
                          
                          ),
          
                            hintText: 'mm'  ,
                            contentPadding: EdgeInsets.all(2),
                          ),  
                        ),)
                        ],)),
                      SizedBox(height:10),

                       Container(
                         padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                         child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                       Text("Vertical",style: TextStyle(fontSize: width*0.03),), 
                     SizedBox(
                        width:width*0.13,
                        height:20,
                         child:TextField (  
                           style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold ,),
                           textAlign: TextAlign.center,
                           
                           
                          decoration: InputDecoration(  
                            
                    focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),        

                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                            hintStyle: TextStyle(
                          color: Colors.grey, // <-- Change this
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          
                          
                          ),
          
                            hintText: 'mm'  ,
                            contentPadding: EdgeInsets.all(2),
                          ),  
                        ),)
                        ],)),
                      SizedBox(height:10),

                       Container(
                         padding: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          border: Border(
            
                        bottom: BorderSide(width: 1, color: Color(0xFFe6e6e6)),
                      ),
                       ),
                         child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                       Text("Height",style: TextStyle(fontSize: width*0.03),), 
                     SizedBox(
                        width:width*0.13,
                        height:20,
                         child:TextField (  
                           style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold ,),
                           textAlign: TextAlign.center,
                           
                           
                          decoration: InputDecoration(  
                            
                    focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),        

                    enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                ),
                            hintStyle: TextStyle(
                          color: Colors.grey, // <-- Change this
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          
                          
                          ),
          
                            hintText: 'mm'  ,
                            contentPadding: EdgeInsets.all(2),
                          ),  
                        ),)
                        ],)),
                      SizedBox(height:10),
                   

                     


                                      


                                   
                  
                   ],),),)



                   ],),),

                

                  ],),
                 



                  
                ],)
                
                ,),)),

              ],),),

              
          ],),)


      ],),
      
      
      )
      ),

      
      
    );
  }
}