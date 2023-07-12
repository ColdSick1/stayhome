import 'package:flutter/material.dart';

class AuthorizationLogo extends StatelessWidget {
  const AuthorizationLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SizedBox(
      height: height * 0.45,
      width: width,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 80,
            // bottom: 8,
            child: Image.asset(
              'assets/stay_home.png',
              // width: 129,
              // height: 144,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 80,
            child: Image.asset('assets/dots.png'),
          ),
        ],
      ),
    );
  }
}
