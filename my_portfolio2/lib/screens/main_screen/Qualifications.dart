import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';
import 'package:my_portfolio2/screens/main_screen/information.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final List<Widget>  myitems = [
    Card(
      elevation: 6,
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 43, 42, 42),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  '12th',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GradientText(
                  ' I have Completed 12th grade with a remarkable 95% in board examinations from Shemford Futuristic School, Kasganj',
                  colors: [
                    const Color.fromARGB(255, 246, 196, 192),
                    Color.fromARGB(255, 182, 241, 184),
                  ],
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Card(
      elevation: 6,
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 43, 42, 42),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  '12th',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GradientText(
                  ' I have Completed 12th grade with a remarkable 95% in board examinations from Shemford Futuristic School, Kasganj',
                  colors: [
                    const Color.fromARGB(255, 246, 196, 192),
                    Color.fromARGB(255, 182, 241, 184),
                  ],
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Card(
      elevation: 6,
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 43, 42, 42),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  '12th',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GradientText(
                  ' I have Completed 12th grade with a remarkable 95% in board examinations from Shemford Futuristic School, Kasganj',
                  colors: [
                    const Color.fromARGB(255, 246, 196, 192),
                    Color.fromARGB(255, 182, 241, 184),
                  ],
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    // SizedBox(
    //   height: defaultPadding
    // ),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 200,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
            items: myitems.map((widget) => Container(child: widget)).toList(),
          ),
          SizedBox(height: defaultPadding,),
          AnimatedSmoothIndicator(
            activeIndex: myCurrentIndex,
            count: myitems.length,
            effect: const WormEffect(),
          )
        ],
      ),
    );

  }
}

