import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const kPrimaryColor = Color(0xFF255ED6);
const kTextColor = Color(0xFF35364F);
const kBackgroundColor = Color(0xFFE6EFF9);
const kRedColor = Color(0xFFE85050);

const kDefaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kPrimaryColor.withOpacity(0.1),
  ),
);

// * Validator errors const

const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

// ? parolni tekshirish uchun yozilgan validator 

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(5, errorText: 'password must be at least 5 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ],
);