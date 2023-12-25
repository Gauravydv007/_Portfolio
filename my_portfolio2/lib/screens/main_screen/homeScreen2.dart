import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio2/const.dart';
import 'package:my_portfolio2/models/me_pojects.dart';
import 'package:my_portfolio2/resposive.dart';
import 'package:my_portfolio2/screens/homescreen.dart';
import 'package:my_portfolio2/screens/main_screen/Qualifications.dart';
import 'package:my_portfolio2/screens/main_screen/animatedcounter.dart';
import 'package:my_portfolio2/screens/main_screen/project_grid&card.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
      // all things bound this page
      AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2 : 3,
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'assets/images/flat-lay-workstation-with-copy-space-laptop.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Text('This is my Amazing Art Space!!',
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline3!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            : Theme.of(context).textTheme.headline5!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                  ),
                  if (!Responsive.isMobileLarge(context))
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.subtitle1!,
                    maxLines: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18, top: 20),
                      child: Row(
                        children: [
                          if (!Responsive.isMobileLarge(context))
                            Text.rich(
                              TextSpan(text: "<", children: [
                                TextSpan(
                                    text: "Flutter",
                                    style: TextStyle(color: primaryColor)),
                                TextSpan(text: '> ')
                              ]),
                            ),
                          if (!Responsive.isMobileLarge(context))
                            SizedBox(
                              height: defaultPadding,
                            ),
                          Text('I Build :- '),
                          Expanded(child: AnimatedText()),
                          // if(!Responsive.isMobile(context))
                          // SizedBox(height: defaultPadding,)
                          
                        ],
                      ),
                    ),
                  ),
                  if(!Responsive.isMobileLarge(context))
                  SizedBox(height: defaultPadding),
                  if (!Responsive.isMobileLarge(context))
                    ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          backgroundColor: primaryColor,
                        ),
                        child: Text(
                          'EXPLORE NOW',
                          style: TextStyle(color: darkColor),
                        ))
                ],
              ),
            ),
          )
        ]),
      ),

      Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              AnimatedCounter(
                value: 80,
                text: "+",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Repositories',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ]),
            Row(children: [
              AnimatedCounter(
                value: 20,
                text: "+",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Projects',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ]),
            Row(children: [
              AnimatedCounter(
                value: 10,
                text: "+",
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Stars',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ]),
          ],
        ),
      ),

        Text(
        "Qualifications",
        style: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      ),

      SizedBox(height: defaultPadding),


          Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: MyImageSlider(),
      ),

      Text(
        "My Projects",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(
        height: defaultPadding,
      ),

      Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
            childAspectRatio: 2,
          ),
          mobileLarge: ProjectGridView(
            crossAxisCount: 2,
            // childAspectRatio: 2,
          ),
          tablet: ProjectGridView(childAspectRatio: 1.1),
          desktop: ProjectGridView()),
      SizedBox(
        height: defaultPadding,
      ),

    



  
    ]
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText('Resposive for Mobile and web',
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText('First APP name of mime ',
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText('Erp App for the college',
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText('Weather App for Live Weather 🌩️',
          speed: Duration(milliseconds: 60))
    ]);
  }
}

// class ProjectGridView2 extends StatelessWidget {
//   const ProjectGridView2({
//     Key? key,
//     this.crossAxisCount = 1,
//     this.childAspectRatio = 1.3,
//   }) : super(key: key);

//   final int crossAxisCount;
//   final double childAspectRatio;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: My_Qualification.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: crossAxisCount,
//           childAspectRatio: childAspectRatio,
//           crossAxisSpacing: defaultPadding,
//           mainAxisSpacing: defaultPadding,
//         ),
//         itemBuilder: (context, index) => SingleChildScrollView(
//               child: ProjectCard2(
//                 project1: My_Qualification[index],
//               ),
//             ));
//   }
// }



// class ProjectCard2 extends StatelessWidget {
//   const ProjectCard2({
//     super.key,
//     required this.project1,
//   });
//   final Project2 project1;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(defaultPadding),
//       color: secondaryColor,
//       child: Column(
//         children: [
//           Text(
//             project1.title!,
//             maxLines: 2,
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//           SizedBox(
//             height: defaultPadding,
//           ),
//           Text(
//             project1.description!,
//             maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(height: 1.5),
//           ),
//           SizedBox(
//             height: defaultPadding,
//           ),
//           TextButton(onPressed: () {}, child: Text("Read More>>"))
//         ],
//       ),
//     );
//   }
// }

