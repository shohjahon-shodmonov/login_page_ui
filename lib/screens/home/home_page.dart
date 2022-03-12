import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signup_pages/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Home Screen",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
        body: Container(
          child: SvgPicture.asset(
            'assets/splash_bg.svg',
            fit: BoxFit.cover,
          ),
        ));
  }
}
