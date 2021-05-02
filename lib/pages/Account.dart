import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
    double text = MediaQuery.textScaleFactorOf(context);
     double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(15.0),
        child: Container(
          
        
            child: ListView(
              shrinkWrap: true,
              children: [
                Text("Edit Profile",
                style: TextStyle(fontSize:text*24.0,fontWeight: FontWeight.bold),
                
                ),
                SizedBox(height: height*0.02),
                Stack(
                alignment: Alignment.center,
                 children: [
                   Container(
                     height: height*0.29,
                     width: width*0.5,
                     decoration: BoxDecoration(
                       border: Border.all(
                         width: 4,
                         color: Colors.redAccent,
                       ),
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('images/a.jpg'),                 
                       ),
                       shape: BoxShape.circle,
                     ),

                   ),
                   Positioned(

                     left: 106.0,
                     bottom: 5.0,
                     right: 0,
                     child: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(
                           width: 3,
                           color: Colors.black,
                         ),
                         color: Colors.greenAccent,
                       ),
                       child: Icon(
                         Icons.edit,
                         color: Colors.white,
                         

                       ),
                       
                     ),
                   ),
                 ],

                ),
                TextField(

                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Adnan',
                   
                  ),
                ),
                  TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Griezmann',
                   
                  ),
                ),
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'AdnanGriezmann@gmail.com',
                   
                  ),
                ),
                SizedBox(height: height *0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.purple,width: 2.0),
                      onPressed: (){},
                      child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),

                    
                    ),
                      OutlineButton(
                         borderSide: BorderSide(color: Colors.purple,width: 2.0),
                      onPressed: (){},
                      child: Text('Save',style: TextStyle(fontWeight: FontWeight.bold)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                                                                                                             
                    
                    ),
                  ],
                )
              ],
            
            ),
         
        ),
        
      ),
      
      
       

      
         

    
      
    );
  }
}