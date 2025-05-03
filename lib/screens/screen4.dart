// screens/screen4.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductModel 
{
  final String image;
  final String title;
  final String subTitle;
  final String price;

  ProductModel
  (
    {
      required this.image,
      required this.price,
      required this.subTitle,
      required this.title,
    }
  );
}

class Screen4 extends StatelessWidget
{
   Screen4({super.key});

    final ProductModel product = ProductModel(
      image: "images/pasta.png", 
      price: "\$ 20.000", 
      subTitle: "2packs", 
      title: "Tropical fruit salad");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("images/pasta.png",
                width: 40,
                height: 40,
                ),
                SizedBox(width: 20,),
                Text(
                      "Tropical fruit salad \n 2 packs",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              ],
            ),

            Text(
              "\$20,000",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              
            ),
            ),
          ],
        ),
      ),
    )
  );
    
  }
}







// import 'package:flutter/material.dart';

// class Screen4 extends StatelessWidget {
//   const Screen4({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           margin: const EdgeInsets.symmetric(vertical: 40),
//           padding: const EdgeInsets.all(10),
//           width: 300,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Image.asset(
//                     "assets/images/tropical_fruit_salad.png", // تأكد من المسار
//                     width: 40,
//                     height: 40,
//                     fit: BoxFit.cover,
//                   ),
//                   const SizedBox(width: 20),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Tropical fruit salad",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Text(
//                         "2packs",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const Text(
//                 "₦20,000",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }