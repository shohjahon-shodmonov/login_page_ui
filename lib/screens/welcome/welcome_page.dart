import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signup_pages/constants.dart';
import 'package:signup_pages/screens/login/sign_in_page.dart';
import 'package:signup_pages/screens/login/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/splash_bg.svg',
            fit: BoxFit.cover,
            // ? ekranni to'liq qoplashi uchun ham StackFit.expand, ham SvgPicturedagi fit beriladi
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset('assets/gerda_logo.svg'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: kDefaultPadding),
                  child: SizedBox(
                    width: double.infinity,
                    child: signUpButton(context),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: signInButton(context),
                ),
                const SizedBox(height: kDefaultPadding * 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton signInButton(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(10)), // ? buttonga borderRadius berish
              side: BorderSide(
                // ? border rangini berish
                color: Color(0xFF6CD8D1),
              ))),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ),
        );
      },
      child: const Text("Sign In"),
    );
  }

  ElevatedButton signUpButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF6CD8D1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ), // ? buttonga borderRadius berish
        ),
      ),
      //style: TextButton.styleFrom(backgroundColor: Color(0xFF6CD8D1)),
      // ? rangni bu usulda berish ham mumkin
      child: const Text("Sign Up"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
        );
      },
    );
  }
}
