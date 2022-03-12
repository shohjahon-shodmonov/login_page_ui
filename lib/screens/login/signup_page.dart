import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signup_pages/constants.dart';
import 'package:signup_pages/screens/home/home_page.dart';
import 'package:signup_pages/screens/login/components/sign_up_form.dart';
import 'package:signup_pages/screens/login/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset('assets/Sign_Up_bg.svg', fit: BoxFit.cover),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create an account",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sing in",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding * 2),
                    SignUpForm(
                      formKey:
                          _formKey, // * Barcha textformfield'lar shu faylda
                    ),
                    const SizedBox(height: kDefaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // * Sign up form tayyor
                            _formKey.currentState!.save();
                            // * bu bizning inputlarimizni saqlaydi
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        },
                        child: const Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
