import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';


class AnimatedCircularIndicator extends StatelessWidget {
  const AnimatedCircularIndicator({
    super.key, required this.percentage, required this.label,
  });

final double percentage;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(aspectRatio: 1,
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage), 
          duration: defaultDuration, 
          builder: (context, double value, child) =>Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
              Center(
                child: Text(
                  (value*100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )
            ],
          )
          ),
        ),
    
        SizedBox(height: 5),
        Text(label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}