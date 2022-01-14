import 'dart:ui';

import 'package:flutter/material.dart';


class HomePage  extends StatelessWidget {
  const HomePage ({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    int con_date=100;
    double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFe6e6e6),
      // appBar: AppBar(
      //   title: Text('Home Pages'),
      // ),
      
// body: SingleChildScrollView ( // this will make your body scrollable
//   child: Column(
//    /// your parameters
//    children: <Widget> [
//       // your widgets,
//      // your widget...
//    ],
//  ),
// )

body: Container(
  
  child: SingleChildScrollView(
  
  child: Column(
    children: [

      Image.asset("images/home_3.jpg",fit: BoxFit.cover,width: double.infinity,),
      SizedBox(
        height: 35,
      ),

     Container(
  padding: EdgeInsets.all(16.0),
  margin:  EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    boxShadow: [
      BoxShadow(color: Colors.white, spreadRadius: 1,),
    ],
  ),
  // height: 200,
  width: width*0.9,
  child: Column(
    children: [

     
      Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          
          child: Row(children: [
            Icon(Icons.calendar_today_outlined,size: 20,color: Colors.grey,),
            Text("   Connection Date " ,style: TextStyle(fontSize: width*0.035,color: Colors.grey)),
          ],),
          ),
          Text("2022.10.01",  style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),
)
        ],),
      ),

      SizedBox(
        height: 20,
      ),

       Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          
          child: Row(children: [
            Icon(Icons.person,size: 20,color: Colors.grey,),
            Text("   User Name ",style: TextStyle(fontSize: width*0.035,color: Colors.grey)),
          ],),
          ),
          Text("sky@skynaut",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),
)
        ],),
      ),

        SizedBox(
                height: 20,
              ),

       Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          
          child: Row(children: [
            Icon(Icons.settings_suggest_sharp,size: 20,color: Colors.grey,),
            Text("  Product Reg.No ",style: TextStyle(fontSize: width*0.035,color: Colors.grey)),
          ],),
          ),
          Text("2dka-asd2-1222",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),
)
        ],),
      ),


      SizedBox(
        height: 20,
      ),

       Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          
          child: Row(children: [
            Icon(Icons.connect_without_contact,size: 20,color: Colors.grey,),
            Text("   Network Status ",style: TextStyle(fontSize: width*0.035,color: Colors.grey)),
          ],),
          ),
          Text("Connected",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),
)
        ],),
      )


    ],

  )
  
),
      
         
      
      
      
      
      
      
      
    ],
   
  )
   
        // width: double.infinity,
        // height: 378,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("images/home_3.jpg"),
        //       fit: BoxFit.cover,
              
        //     ),
        //   ),
     
  // child: Text(
  //         "Cute Cats of\nEducity",
  //         style: TextStyle(
  //                 color: Colors.white.withOpacity(0.8),
  //                 fontSize: 38.0,
  //                 height: 1.4,
  //                 fontWeight: FontWeight.w600),
  //         textAlign: TextAlign.center,
  //       ),
     
        
)

)
    );
  }
}