// import 'package:flutter/material.dart';


// class MyInfo extends StatelessWidget {
//   const MyInfo({
//     Key ? key
//   }):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(aspectRatio: 1.23, 
//     child: Container(
//       color: Colors.black45,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Spacer(flex: 2,),
//           CircleAvatar(
//             radius: 50,
//             backgroundImage: AssetImage('assets/images/my_image.png'),
        
//           ),
//           Text('Gaurav'),
//           Text('Flutter Developer & Competitive Programmer',
//           style: TextStyle(
//             fontWeight: FontWeight.w200,
//             height: 1.5,
//           ),
          
//           ),
//           Spacer(flex: 2,)
//         ],
//       ),
//     ),);
//   }
// }



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({
    Key ? key,
  }) : super(key: key);

  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  bool isImageTapped = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isImageTapped = !isImageTapped;
          });
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.black45,
              child: Row(
                children: [


                    Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 50, right: 5),
                      child: RichText(
                        text: TextSpan(
                          text: "Hii!",
                          style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 240, 201, 201),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " 👋🏻",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5, right: 5
                      ),
                      child: Row(
                        children: [
                          Text("I'm ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                          GradientText(
                            'Gaurav Yadav',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            colors: [
                              Colors.blue,
                              Colors.red,
                              Colors.yellow,
                          
                            ],
                          ),
                        ],
                      ),
                    ),



                      ]
                    ),

                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/my_image.png'),
                      ),
                      // Text('Gaurav'),
                      // Text(
                      //   'Flutter Developer & Competitive Programmer',
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w200,
                      //     height: 1.5,
                      //   ),
                      // ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ],
              ),
            ),
            if (isImageTapped)
              Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isImageTapped = false;
                            });
                          },
                          child: Image.asset(
                            'assets/images/my_image.png',
                            width: 190,
                            height: 180,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}









// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';

// class MyInfo extends StatefulWidget {
//   const MyInfo({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _MyInfoState createState() => _MyInfoState();
// }

// class _MyInfoState extends State<MyInfo> {
//   bool isImageTapped = false;

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return AspectRatio(
//       aspectRatio: 1.23,
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             isImageTapped = !isImageTapped;
//           });
//         },
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Container(
//               color: Colors.black45,
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(
//                             left: screenWidth < 600 ? 20 : 5,
//                             top: screenWidth < 600 ? 20 : 80,
//                             right: screenWidth < 600 ? 20 : 5,
//                           ),
//                           child: RichText(
//                             text: TextSpan(
//                               text: "Hii!",
//                               style: GoogleFonts.ubuntu(
//                                 textStyle: TextStyle(
//                                   color: Color.fromARGB(255, 240, 201, 201),
//                                   fontSize: screenWidth < 600 ? 16 : 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               children: <TextSpan>[
//                                 TextSpan(
//                                   text: " 👋🏻",
//                                   style: GoogleFonts.ubuntu(
//                                     textStyle: TextStyle(
//                                       fontSize: screenWidth < 600 ? 16 : 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color.fromARGB(255, 255, 255, 255),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(
//                             left: screenWidth < 600 ? 20 : 5,
//                             right: screenWidth < 600 ? 20 : 2,
//                           ),
//                           child: Row(
//                             children: [
//                               Text(
//                                 "I'm ",
//                                 style: TextStyle(fontSize: screenWidth < 600 ? 12 : 14, fontWeight: FontWeight.bold, color: Colors.white),
//                               ),
//                               GradientText(
//                                 'Gaurav Yadav',
//                                 style: TextStyle(fontSize: screenWidth < 600 ? 14 : 17, fontWeight: FontWeight.bold),
//                                 colors: [
//                                   Colors.blue,
//                                   Colors.red,
//                                   Colors.yellow,
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Spacer(
//                           flex: 2,
//                         ),
//                         CircleAvatar(
//                           radius: screenWidth < 600 ? 30 : 50,
//                           backgroundImage: AssetImage('assets/images/my_image.png'),
//                         ),
//                         Spacer(
//                           flex: 2,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             if (isImageTapped)
//               Center(
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//                   child: Container(
//                     color: Colors.black.withOpacity(0.5),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               isImageTapped = false;
//                             });
//                           },
//                           child: Image.asset(
//                             'assets/images/my_image.png',
//                             width: screenWidth < 600 ? 120 : 190,
//                             height: screenWidth < 600 ? 120 : 180,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }





