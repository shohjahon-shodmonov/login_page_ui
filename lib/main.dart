import 'package:flutter/material.dart';
import 'package:signup_pages/constants.dart';
import 'package:signup_pages/screens/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor app sing up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          // ? appdagi har bir buttonga padding berib chiqish o'rniga
          // ? shu property orqali hammasiga bittada style berish mumkin -> DRY
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(kDefaultPadding),
            primary: kPrimaryColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border:
              textFieldBorder, // ? ikkalasi bir xil bo'lgani uchun const faylga olingan
          enabledBorder: textFieldBorder,
        ),
        // ? textformfield borderini rangnini o'zgartirish uchun
        // ? BORDER va ENABLED BORDER propertylariga BORDERSIDE bilan color berish kerak
        // ? va buni barcha textformfield'lar uchun qo'llash uchun mainda berish kerak -> DRY
      ),
      home: const WelcomePage(),
    );
  }
}
