import 'package:flutter/material.dart';
import 'package:book_tracker/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 10,
          ),
          LoginForm(
            formKey: _formKey,
            emailTextController: _emailTextController,
            passwordTextController: _passwordTextController,
          )
        ],
      ),
    );
  }
}
