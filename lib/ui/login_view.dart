import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo_test/backend/auth_bloc.dart';
import 'package:todo_test/ui/widgets/custom_button.dart';
import 'package:todo_test/ui/widgets/custom_pass.dart';
import 'package:todo_test/ui/widgets/custom_txtfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void login() async {
    if (formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            LoginEvent(
              username: usernameController.text.trim(),
              password: passwordController.text.trim(),
            ),
          );
    }
  }

  void loginSuccess() async {
    // await LocalDataStorage.instance.saveAuthResponse(data);
    log('Successfully loggedin ✨✨');
    Fluttertoast.showToast(
        msg: 'Successfully loggedin',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  void loginError(Exception error) {
    log('Error found at line 36 🔴🔴🔴 $error');
    Fluttertoast.showToast(
        msg: error.toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          loginSuccess();
        }
        if (state is LoginError) {
          loginError(state.apiResponse);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      label: 'Username',
                      hintText: 'Enter your username',
                      controller: usernameController,
                    ),
                    const SizedBox(height: 40),
                    CustomPasswordField(
                      label: 'Password',
                      hintText: '***************',
                      controller: passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 40),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return CustomButton(
                          width: double.maxFinite,
                          loading: state is LoginLoading,
                          text: 'Login',
                          onPressed: () => login(),
                        );
                      },
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
