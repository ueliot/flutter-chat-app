import 'package:flutter/material.dart';

class BtnAzul extends StatelessWidget {

  final String text; 
  final VoidCallback? onPressed;

  const BtnAzul({
    Key? key, 
    required this.text, 
    required this.onPressed
  }) : super(key: key);



 
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            
            // ignore: unnecessary_this
            onPressed: this.onPressed,
            
            
            //child: Text('boton'),
            
            style: ElevatedButton.styleFrom(
                //primary: Colors.purple,
                //fixedSize: const Size(double.infinity,80),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                //padding: EdgeInsets.only(left: 100,right: 100),
                //textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),  
                shape: new RoundedRectangleBorder(                   
                    borderRadius: new BorderRadius.circular(45.0),                    
                ),                
                    
                    
            ),
            child: Container(
              width: double.infinity,
              height: 25,
              child: Center(child: Text(this.text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
              
            )


          );
  }
}