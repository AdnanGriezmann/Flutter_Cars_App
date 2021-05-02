import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
       double height = MediaQuery.of(context).size.height;
    double text = MediaQuery.textScaleFactorOf(context);
     double width = MediaQuery.of(context).size.width;
    return ListView(
          children: [
            Container(
              height: height*0.3,
            width: width*1.0,
            child: Card(
                color: Colors.white12,
                child: Row(
                 children: [
                   Image.asset('images/1.jpg',
                    width: width*0.6,
                    height: height*0.7,
                    fit: BoxFit.fitHeight,            
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       
                       children: [
                         Text('Bugatti',                 
                         style: TextStyle(fontSize: text*21.0,fontWeight: FontWeight.bold,color: Colors.red),
                         ),
                         SizedBox(height: height*0.02),
                         Text('Car fast bugatti'),
                         SizedBox(height: height*0.02),
                         Text('Rate: 5.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: text*15.0)),
                       ],

                     ),
                   ),
                 ],
                ),
                
              ),
            ),
              Container(
              height: height*0.3,
            width: width*1.0,
            child: Card(
                color: Colors.white12,
                child: Row(
                 children: [
                   Image.asset('images/2.jpg',
                    width: width*0.6,
                    height: height*0.7,
                    fit: BoxFit.fitHeight,            
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       
                       children: [
                         Text('mcleren',                 
                         style: TextStyle(fontSize: text*21.0,fontWeight: FontWeight.bold,color: Colors.red),
                         ),
                         SizedBox(height: height*0.02),
                         Text('Car F1 is level'),
                         SizedBox(height: height*0.02),
                         Text('Rate: 4.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: text*15.0)),
                       ],

                     ),
                   ),
                 ],
                ),
                
              ),
            ),
              Container(
              height: height*0.3,
            width: width*1.0,
            child: Card(
                color: Colors.white12,
                child: Row(
                 children: [
                   Image.asset('images/3.jpg',
                    width: width*0.6,
                    height: height*0.7,
                    fit: BoxFit.fitHeight,            
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       
                       children: [
                         Text('lambarghini',                 
                         style: TextStyle(fontSize: text*21.0,fontWeight: FontWeight.bold,color: Colors.red),
                         ),
                         SizedBox(height: height*0.02),
                         Text('Car lambarghini '),
                         SizedBox(height: height*0.02),
                         Text('Rate: 5.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: text*15.0)),
                       ],

                     ),
                   ),
                 ],
                ),
                
              ),
            ),
              Container(
              height: height*0.3,
            width: width*1.0,
            child: Card(
                color: Colors.white12,
                child: Row(
                 children: [
                   Image.asset('images/4.jpg',
                    width: width*0.6,
                    height: height*0.7,
                    fit: BoxFit.fitHeight,            
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       
                       children: [
                         Text('Ferrari',                 
                         style: TextStyle(fontSize: text*21.0,fontWeight: FontWeight.bold,color: Colors.red),
                         ),
                         SizedBox(height: height*0.02),
                         Text('Car Ferrari most'),
                         SizedBox(height: height*0.02),
                         Text('Rate: 2.0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: text*15.0)),
                       ],

                     ),
                   ),
                 ],
                ),
                
              ),
            ),
           
          ],
      );

  }
}
