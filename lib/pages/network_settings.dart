




import 'package:flutter/material.dart';
import 'package:seda/main.dart';
import 'package:seda/pages/settings.dart';

class NetworkSettings extends StatefulWidget {
  static int selected_index=0;

  

  
  const NetworkSettings({ Key? key }) : super(key: key);
  
  @override
  _NetworkSettingsState createState() => _NetworkSettingsState();
}

class _NetworkSettingsState extends State<NetworkSettings> {
  String connectedwifi="Skyautonet product 0001";
  String wifi1="Seda skyautonet 001";
  String wifi2="skyautonet 121";
  String wifi3="seda 313";
  
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Color(0xFFe6e6e6) ,
      body: SingleChildScrollView(

       
      child: Container(
        width: width*1,
        margin: EdgeInsets.all(20),
        child:Container(child:Column(children: [



           ///////// ///////// ///////////1st Row///////// ///////// ///////// ///////// 
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

        GestureDetector(
                      onTap: () {
                        
                        NetworkSettings.selected_index=4;
                       
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyStatefulWidget()),
  );
                         

                        
                      },
        child:Container(child: Row(children: [
          Icon(Icons.arrow_back_ios_new),
          SizedBox(width: 5,),
          Text("Wi-Fi")
        ],),),),

        Container(child: Row(children: [
          Icon(Icons.document_scanner_outlined),

          SizedBox(width: 5,),
          Icon(Icons.more_vert_rounded)
        ],),)

      ],),




          ///////// ///////// ///////////2nd Row///////// ///////// ///////// ///////// 
     
                      GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle light when tapped.
                         

                        });
                      },
                    child:Container(margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.blue[50],
                       
                        borderRadius: BorderRadius.circular(10.0),
                       ),
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("ON/OFF",style: TextStyle(fontSize: width*0.025),),
                     
                        //  Text("on"),
                         SwitchScreen1()
                      
                       
                     ],),),),
                     SizedBox(height:20),




           ///////// ///////// ///////////3rd Row///////// ///////// ///////// ///////// 

                    //Current network 
                    Container(margin: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                    child: Row(children: [
                      Text("Current network",style: TextStyle(fontSize: width*0.03,color: Colors.grey
                      ))],),),

                    //Connected Network row
                    Container(
                    padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.white,
                       
                        borderRadius: BorderRadius.circular(10.0),
                       ),

                    
                     child:Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      
                        
                       Container(child: Row(children: [
                        
                        Icon(Icons.wifi,size: width*0.07,color: Colors.blue,),
                        SizedBox(width: 15,),
                       Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(connectedwifi,style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.028)),
                        Text("connected",style: TextStyle(fontSize: width*0.026,color: Colors.grey),)

                       ],),)
                       ],),),
                      IconButton(padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
                                          onPressed: (){
                                            
                                           
                                         
                                          },
                                          
                                          icon: Icon(Icons.settings),
                                          iconSize: 18,)
                       
                       
                        
                         
                      
                       
                     ],),),
                     SizedBox(height:20),
                     //Third Row Complete here





          ///////// ///////// ///////////4th Row///////// ///////// ///////// ///////// 

                      //Available networks text
                     Container(margin: EdgeInsets.only(left: 10,bottom: 5),child: Row(children: [
                      Text("Available Networks",style: TextStyle(fontSize: width*0.03,color: Colors.grey))
                     ],),),

                      //Available Networks Container
                     Container(
                       decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,           
                 ),
                       padding: EdgeInsets.all(13),        
                       width: width*0.9,
                       height: height*0.5,
                       child:SingleChildScrollView(
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [


                         //These Containers are suppose to be build through For loop.

                         //Available Wifi Container
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                connectedwifi=wifi1;
                              

                              });
                            },
                         child:Container(child: Row(children: [                       
                           Icon(Icons.wifi,size: width*0.05,color: Colors.blue,),
                           SizedBox(width: 10,),
                           Text(wifi1,style: TextStyle(fontSize: width*0.028,fontWeight: FontWeight.bold),)
                         ],),),),
                         SizedBox(height: 12,),
                         

                        //2nd Available Wifi Container
                         GestureDetector(
                            onTap: () {
                              setState(() {
                                connectedwifi=wifi2;
                              

                              });
                            },
                         child:Container(child: Row(children: [

                           Icon(Icons.wifi,size: width*0.05,color: Colors.blue,),
                           SizedBox(width: 10,),
                           Text(wifi2,style: TextStyle(fontSize: width*0.028,fontWeight: FontWeight.bold),)
                         ],),),),
                         SizedBox(height: 12,),
                         

                          //third available wifi Container
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                connectedwifi=wifi3;
                              

                              });
                            },
                         child:Container(child: Row(children: [

                           Icon(Icons.wifi,size: width*0.05,color: Colors.blue,),
                           SizedBox(width: 10,),
                           Text(wifi3,style: TextStyle(fontSize: width*0.028,fontWeight: FontWeight.bold),)
                         ],),),),
                         SizedBox(height: 12,),


                     ],)),)
                    //4th Row Complete here
      



        ],),)

        

      
      
      
      ),

   
      

      )
    );
  }
}














class SwitchScreen1 extends StatefulWidget {  
  
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