import 'package:flutter/material.dart';

class Homebtom extends StatefulWidget {
  @override
  _HomebtomState createState() => _HomebtomState();
}

class _HomebtomState extends State<Homebtom> {
  @override
  Widget build(BuildContext context) {
       double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body:  ListView(
        children: [
          Container(
            color: Colors.grey,
            height: height*0.3,
            width: width*1.0,
            child: Card(
                   clipBehavior: Clip.antiAlias,
                   child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.car_rental),
                  title: Text('ZR1',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(
                    'The most fastest car in the world top 5 is ZR1',
                    style: TextStyle(color: Colors.grey.withOpacity(0.6)),
                  ),                                       

                ),
                Image.network('https://images.unsplash.com/photo-1612895680750-79c31697d392?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8MjAyMCUyMGNhcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                fit: BoxFit.fill,
                height: height*0.18,
                width: double.infinity,   
                
                
                ),
                
                
                
              ],
                   ),
                   elevation: 5.0,

                ),
          ),
          SizedBox(height: height*0.02),
           Container(
            height: height*0.3,
            width: width*1.0,
            child: Card(
               clipBehavior: Clip.antiAlias,
               child: Column(
                 children: [
                   ListTile(
                     leading: Icon(Icons.car_repair),
                     title: Text('Mcleren F1',style: TextStyle(fontWeight: FontWeight.bold),),
                     subtitle: Text(
                       'The most fastest car in the world top 2 is F1 valuable and advanced',
                       style: TextStyle(color: Colors.grey.withOpacity(0.6)),
                     ),                                       

                   ),
                   Image.network('https://images.unsplash.com/photo-1544829099-b9a0c07fad1a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bGFtYm9yZ2hpbml8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                  fit: BoxFit.fill,
                   height: height*0.20,
                   width: double.infinity,   
                                 
                   
                   ),
                   
                   
                   
                 ],
               ),
               elevation: 5.0,

            ),
          ),
            SizedBox(height: height*0.02),
           Container(
            height: height*0.3,
            width: width*1.0,
            child: Card(
               clipBehavior: Clip.antiAlias,
               child: Column(
                 children: [
                   ListTile(
                     leading: Icon(Icons.car_repair),
                     title: Text('lamborghini',style: TextStyle(fontWeight: FontWeight.bold),),
                     subtitle: Text(
                       'The most fastest car in the world top 1st is lamborghini valuable and advanced so speed',
                       style: TextStyle(color: Colors.grey.withOpacity(0.6)),
                     ),                                       

                   ),
                   Image.network('https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGxhbWJvcmdoaW5pfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                  fit: BoxFit.fill,
                   height: height*0.20,
                   width: double.infinity,   
                                 
                   
                   ),
                   
                   
                   
                 ],
               ),
               elevation: 5.0,

            ),
          ),
        ],
      ),
      
    );
  }
}
