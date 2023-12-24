import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';
import 'package:my_portfolio2/screens/LinearIndicator.dart';
import 'package:my_portfolio2/screens/circularIndicator.dart';
import 'package:my_portfolio2/screens/location.dart';
import 'package:my_portfolio2/screens/my_info.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationInfo(
                  title: 'Residence',
                  text: 'India',
                ),
                SizedBox(
                  height: 5,
                ),
                LocationInfo(
                  title: 'City',
                  text: 'Kasganj',
                ),
                SizedBox(
                  height: 5,
                ),
                LocationInfo(
                  title: 'Age',
                  text: '20',
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AnimatedCircularIndicator(
                        percentage: 0.83,
                        label: 'Flutter',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: AnimatedCircularIndicator(
                        percentage: 0.64,
                        label: 'Firebase',
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: AnimatedCircularIndicator(
                        percentage: 0.30,
                        label: 'Rust',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Coding',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                AnimatedLinearProgressIndicator(
                  percentage: 0.7,
                  label: "Dart",
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedLinearProgressIndicator(
                  percentage: 0.4,
                  label: "Rust",
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedLinearProgressIndicator(
                  percentage: 0.95,
                  label: "C++",
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedLinearProgressIndicator(
                  percentage: 0.8,
                  label: "HTML",
                ),
                SizedBox(
                  height: 15,
                ),
                AnimatedLinearProgressIndicator(
                  percentage: 0.6,
                  label: "CSS",
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Knowledge',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Flutter, Dart',
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Stylus, Sass , Less',
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: primaryColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Git',
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'DOWNLOAD CV',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.download_sharp)
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     https://www.linkedin.com/in/gaurav-singh-b710a1291/;

                      //   },
                      //   child: Image.asset('assets/images/icons8-linkedin-48.png'))

                      GestureDetector(
                        onTap: () {
                          // ignore: deprecated_member_use
                          launch(
                              "https://www.linkedin.com/in/gaurav-singh-b710a1291/");
                        },
                        child:
                            Image.asset('assets/images/icons8-linkedin-48.png'),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      GestureDetector(
                        onTap: () {
                          // ignore: deprecated_member_use
                          launch(
                              "https://www.instagram.com/gauravsingh_yaduvanshi007?utm_source=qr&igsh=MTRraXI2cnFxbzY1ZQ==");
                        },
                        child: Image.asset(
                          'assets/images/instagram.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      GestureDetector(
                        onTap: () {
                          // ignore: deprecated_member_use
                          launch(
                              "https://github.com/Gauravydv007");
                        },
                        child: Image.asset(
                          'assets/images/github.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
