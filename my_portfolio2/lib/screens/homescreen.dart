import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';
import 'package:my_portfolio2/resposive.dart';
import 'package:my_portfolio2/screens/sidemenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children, required ScrollController controller}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) // here appbar getting hide
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2, // take 75%
                  child: SideMenu(),
                ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
