import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height;
     double text = MediaQuery.textScaleFactorOf(context);
   //double width = MediaQuery.of(context).size.width;
    
        
        return Scaffold(
             
           appBar: AppBar( 
             leading: IconButton(
               onPressed: (){
                 Navigator.of(context).pop();
    
               },
               icon: Icon(Icons.arrow_back,color: Colors.black),
             ),
             
             backgroundColor: Colors.white,    
             title: Text('Settings',style: TextStyle(color: Colors.black),),
             centerTitle: true,
             elevation: 4.2,
                
           ),
           body: Container(
             child: ListView(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Row(
                     children: [
                       Text('Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize:text* 22.0),),
                       Icon(Icons.person,color: Colors.purple),
                     ],
                   ),           
                 ),
                 Divider(thickness: 2.0,height: height*0.02),
                 SizedBox(height: height*0.03),
                 GestureDetector(
                   onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        
                         Text('Change Password' ,style: TextStyle(color: Colors.grey,fontSize: text*17.0),
    
                            
                         ),
                         Icon(Icons.arrow_forward_ios),
                     ],
                   ),
                      ),
                 ),
                 SizedBox(height: height*0.05),
                  GestureDetector(
                   onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        
                         Text('Language' ,style: TextStyle(color: Colors.grey,fontSize: text*17.0),
    
                            
                         ),
                         Icon(Icons.arrow_forward_ios),
                     ],
                   ),
                      ),
                 ),
                 SizedBox(height: height*0.05),
                    GestureDetector(
                   onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                     
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        
                         Text('Social' ,style: TextStyle(color: Colors.grey,fontSize: text*17.0),
    
                            
                         ),
                         Icon(Icons.arrow_forward_ios),
                     ],
                   ),
                      ),
                 ),
                 SizedBox(height: height*0.05),
    
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Row(
                     
                     children: [
                       Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize:text* 22.0),),
                       Icon(Icons.notifications, color: Colors.purple),
                     ],
                   ),           
                 ),
                 Divider(thickness: 2.0,height: height*0.02),
    
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Every car select',style: TextStyle(color: Colors.grey,fontSize: text*14.0),
                       ),
                       Transform.scale(
                         scale: 0.7,
                       child:  CupertinoSwitch(value: true, onChanged: (bool isActive){},)),
                 ],
               ),
             ),
             SizedBox(height: height*0.03),

               Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Categories filed or not',style: TextStyle(color: Colors.grey,fontSize: text*14.0,),
                       ),
                       Transform.scale(
                         scale: 0.7,
                       child:   CupertinoSwitch(value: false, onChanged: (bool isActive){},)),
                 ],
               ),
             ),
            
           ],

         ),
       ),
      
    );
  }
}