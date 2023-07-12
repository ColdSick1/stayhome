import 'package:flutter/material.dart';

class RegistrationLogo extends StatelessWidget {
  const RegistrationLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset('assets/stay_home_min.png'),
        ),
        Positioned(
          top: 30,
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            'assets/dots_registration.png',
          ),
        ),
      ],
    );
  }
}
