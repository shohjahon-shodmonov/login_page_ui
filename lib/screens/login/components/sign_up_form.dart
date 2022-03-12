import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:signup_pages/constants.dart';
import 'package:signup_pages/screens/login/components/text_field_name.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key, required this.formKey}) : super(key: key);

  final GlobalKey formKey;
  String? _username, _email, _phone, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldName(text: "Username"),
          TextFormField(
            onSaved: (newValue) => _username = newValue,
            validator: RequiredValidator(errorText: requiredField),
            decoration: const InputDecoration(
              hintText: "Shodmonov",
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          TextFieldName(text: "E-mail"),
          TextFormField(
            onSaved: (newValue) => _email = newValue,
            validator: EmailValidator(errorText: emailError),
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "sh.shodmonov1@gamil.com",
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          TextFieldName(text: "Phone number"),
          TextFormField(
            onSaved: (newValue) => _phone = newValue,
            validator: RequiredValidator(errorText: requiredField),
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: "+99891 1234567",
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          TextFieldName(text: "Password"),
          TextFormField(
            onSaved: (newValue) => _password = newValue,
            onChanged: (pass) => _password = pass,
            validator: passwordValidator,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "*****",
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          TextFieldName(text: "Confirm Password"),
          TextFormField(
            validator: (pass) =>
                MatchValidator(errorText: "Password do not match")
                    .validateMatch(pass!, _password!),
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "*****",
            ),
          ),
        ],
      ),
    );
  }
}
