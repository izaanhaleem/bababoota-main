import 'package:flutter/material.dart';

class IconCounter extends StatelessWidget {
  const IconCounter({
    Key? key,
    this.numOfitem = 0,
  }) : super(key: key);

  final int numOfitem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        color: const Color(0xFFFF4848),
        shape: BoxShape.circle,
        border: Border.all(width: 1.5, color: Colors.white),
      ),
      child: Center(
        child: Text(
          "$numOfitem",
          style: const TextStyle(
            fontSize: (10),
            height: 1,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
