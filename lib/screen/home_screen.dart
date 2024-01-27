import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home_Screen extends StatefulWidget {

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int count = 0;

   void counter(){
    setState(() {
      count++;
    });
   }

void Restart(){
  
  setState(() {
    count=0;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Opacity(
        opacity: 0.9,
        child: Image.network('https://thumbs.dreamstime.com/b/arabic-bismillah-means-name-god-opening-thuluth-text-reveal-cinematic-glowing-neon-stye-syle-178707482.jpg', )),
        Center(
          child: Container(
            height: 201,
            width: 291,
            decoration: BoxDecoration(
              color: Colors.green.shade300,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.white.withOpacity(.5),
                  blurRadius: 5,
                  spreadRadius: 5
                )
              ]
            ),
             child: Center(child: Container(
                height: 51,
                width: 101,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(51)
                ),
                child: Center(child: Text(count.toString(),style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),),
              )),
          ),
        ),
         Transform.translate(
             offset:Offset(0, -37),

           child: Center(
            child: Container(
              height: 191,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius:const  BorderRadius.only(
                  bottomLeft: Radius.circular(51),
                  bottomRight: Radius.circular(51),
                  
                ),
                 boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.white.withOpacity(.5),
                  blurRadius: 2,
                  spreadRadius: 3
                )
              ]
              ),
              child: Column(
              
                children: [
                 InkWell(
                  onTap: (){
                     counter();
                  },
                   child: Container(
                    height: 71,
                    width: 71,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Center(child:  Container(
                      height: 31,
                      width:31,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),),
                   ),
                 ),
                const  Gap(51),
                 ElevatedButton (
                  onPressed: (){
                     Restart();
                 }, child: Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(51)
                  ),
                  child: Center(child: Text('Restart',style: TextStyle(color: Colors.red.shade700,fontWeight: FontWeight.bold),),),
                 ))
                ],
                
              ),
              
             
            ),
            
                   ),
         ),
        
      ],
    )
    );
 
  }
 
}