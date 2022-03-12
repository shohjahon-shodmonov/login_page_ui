import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:signup_pages/constants.dart';
import 'package:signup_pages/screens/login/components/text_field_name.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key? key, required this.formKey}) : super(key: key);

  final GlobalKey formKey;
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }

  
}
