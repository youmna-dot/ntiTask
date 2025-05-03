// screens/screen2.dart
import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget
{
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 239, 238, 238),
        leadingWidth: 95,
        leading: TextButton(
          onPressed: () {},
          child: Text(
          "Cancel", 
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        ),
        title: Text(
          "Info",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [TextButton(
          onPressed: (){},
          child: Text(
          "Done",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        )
        ),
      ],
      ),

      body:Padding(padding: 
      EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Fields(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                Spacer(),
                TextButton(onPressed: (){}, 
                child: Row(
                  children: [
                    Text("Enabled",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                    color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(),
          TextButton(
            onPressed: (){},
            child:Text( 
              "Delete contact",
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
          ),
          ),
          ),
        ],
      ),
      ),
    ); 
  }
}
class Fields extends StatelessWidget
{
  Fields({super.key});
  final List<Map <String,String>> info = 
  [
  {
    "main": '+1 202 456 3456',
    "home": '+2 345 789 0987',
    "bio": "I'm cs student .. Flutter developer"
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "main" ,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          info[0]["main"]!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
        ),
        SizedBox(height: 20),
        Divider(),
        Text(
          "home" ,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          info[0]["home"]!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 20),
        Divider(),

        Text(
          "bio" ,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          info[0]["bio"]!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20),
        
      ],
      
    );
  }
}
class Divider extends StatelessWidget
{
  const Divider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey,
      margin: EdgeInsets.symmetric(vertical: 10),
    );
  }
}