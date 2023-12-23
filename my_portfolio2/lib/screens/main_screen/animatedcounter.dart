import 'package:flutter/material.dart';
import 'package:my_portfolio2/const.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key, required this.value, this.text,
  });
  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
       duration: defaultDuration, 
       builder: (context, value, child) => Text(
        "$value+",
        style: Theme.of(context).textTheme.headline6!.copyWith(color: primaryColor),
       ),
       );
  }
}