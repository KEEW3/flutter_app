import 'package:flutter/material.dart';

class ButtonLoginStyle extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const ButtonLoginStyle({
    super.key,
    required this.buttonText,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),
        ),
      ),
    );
  }
}