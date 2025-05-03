// screens/screen3.dart
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Screen3 extends StatelessWidget
{
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50,
              ),
            ),
            SizedBox(height: 30),

            Text(
              "Congratulations !!!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Your order has been taken and is being attended to ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          SizedBox(height: 30),

          ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Track order",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
              
            ),
            SizedBox(height: 15),

            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Continue shopping",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.orange,
              ),
            ),
              
            ),
             SizedBox(height: 30),
            ],
           

          // TextButton(onPressed: () {}, 
          // child: Container(
          //   margin: EdgeInsets.symmetric( vertical: 15),
          //   padding: EdgeInsets.all(8),
            
          //   decoration: BoxDecoration(
          //     color: Colors.orange,
          //     borderRadius: BorderRadius.circular(10),

          //   ),
          //   child: TextButton(onPressed: (){}
          //   , child: Text(
          //     "track order",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 15,
          //       color: Colors.white,
          //     ),
          //   ),
          //   ),
          // ),
          // ),
          // Container(
          //   margin: EdgeInsets.symmetric( vertical: 15),
          //   padding: EdgeInsets.all(8),

          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(color: Colors.orange),
          //   ),
          //   child: Text(
          //     "Continue shopping ",
          //     style: TextStyle(
          //       color: Colors.orange,
          //       fontSize: 15,
          //     ),
          //   ),

          // ),
        ),
      ),
    );
  }
}