import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';


class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key ? key,
    required this.percentage,
    required this.label, required this.color,
  }):super(key: key);

  final double percentage;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      label,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text((value * 100).toInt().toString() + "%")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                LinearProgressIndicator(
                  value: value,
                  color: color,
                  backgroundColor: darkColor,
                )
              ],
            )
            );
  }
}
