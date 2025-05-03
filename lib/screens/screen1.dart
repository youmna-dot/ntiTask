// screens/screen1.dart
import 'package:flutter/material.dart';
//import 'package:task1_flutter/main.dart';

class Screen1 extends StatelessWidget
{ 
  const Screen1 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15 , vertical: 60
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose your subscription plan",
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 45,
                  color: Colors.black),
              ),

              Text(
                "And get a 7-day free trail",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 30),


              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  //color: const Color.fromARGB(255, 205, 202, 202),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                  Button(
                    period: "Monthly", 
                    discount: "-53% discount", 
                    price: "\$10.90", 
                    duration: "every month")
                ],
                ),
              ),
              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 212, 220),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      "You'll get: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),

                    Text("- Unlimited access"),
                    SizedBox(height: 5),
                    Text("- 200GB storage"),
                    SizedBox(height: 5),
                    Text("- Sync all your devices"),
                      ],
                    ),
                    
                  ],
                ),
              )
              
            ],
          ),
        )
    );  
    
  }
}
class Button extends StatelessWidget
{
  final String period;
  final String discount;
  final String price ;
  final String duration;

  const Button 
  ({
    required this.period,
    required this.discount,
    required this.price,
    required this.duration
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
              ),

               Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(period ,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text(discount,
              style: TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            ],
          ),
        ],
      ),  

      Text(
            "$price \n $duration",
            style: TextStyle(
              fontSize: 18,
            ),
          ) 
        ],
      ),
    );
  }
}
