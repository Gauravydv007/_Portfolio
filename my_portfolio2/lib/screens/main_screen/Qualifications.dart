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
            color: Color.fromARGB(31, 72, 72, 72),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                // color: const Color.fromARGB(255, 245, 90, 90),
                blurRadius: 10.0,
                offset: Offset(10 , 7),
                
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
                blurRadius: 10.0,
                 offset: Offset(10 , 7),
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  '10th',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GradientText(
"I graduated from John Milton School with a stellar 92% in my 10th-grade exams, showcasing my dedication to academic excellence. This achievement underscores my commitment to success and positions me as a driven and capable candidate for future opportunities.",
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
                blurRadius: 10.0,
                 offset: Offset(10 , 7),
              ),
            ]),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'BTech',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GradientText(

'Pursuing a B.Tech in Computer Science and Engineering with a focus on Artificial Intelligence and Machine Learning at Ajay Kumar Garg Engineering College, Ghaziabad. I possess a solid foundation in computer science principles, coupled with hands-on experience through engaging coursework and projects. My studies have equipped me with strong analytical and problem-solving skills, while the collaborative learning environment has enhanced my teamwork and communication abilities. Passionate about leveraging AI/ML to develop innovative solutions.',
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


