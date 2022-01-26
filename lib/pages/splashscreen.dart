
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../main.dart';


class splashscreen extends StatelessWidget {
  const splashscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 1)),
        builder: (ctx, timer) => timer.connectionState == ConnectionState.done
            ? MyStatefulWidget() //Screen to navigate to once the splashScreen is done.
            : Container(
              
              
              height:height*1,width: width*1,
              decoration: BoxDecoration(
                image: DecorationImage(
            image: AssetImage(
                 "images/intro.jpg"
                 
            ),
            fit: BoxFit.cover
        )
              ),

              child: (Column(children: [
                Container(margin: EdgeInsets.only(top: 100),child: Column(children: [
                  
              ///Circular progress bar starts here
                  new CircularPercentIndicator(
                radius: 50.0,
                animation: true,
                animationDuration: 10,
                lineWidth: 5.0,
                percent: 1,
                center: new Text(
                  "Loading",
                  style:
                      new TextStyle(fontSize: 20.0,color: Colors.white),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.white,
                progressColor: Colors.blue,
              ), // Circular Progress bar Ends here


                ],),)
              ],)),

  
              )),
      
      
    );
  }
}