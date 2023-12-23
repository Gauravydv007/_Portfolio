import 'package:flutter/material.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({
    super.key,
    this.title,
    this.text,
  });
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(text!),
      ],
    );
  }
}
