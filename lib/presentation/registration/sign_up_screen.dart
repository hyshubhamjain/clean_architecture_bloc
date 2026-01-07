import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jainebook/core/widget/widget.dart';
import 'package:jainebook/presentation/registration/bloc/registration_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String screenName = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController passwordController;
  late TextEditingController phoneNumberController;
  late TextEditingController confirmPasswordController;
  late final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (msg) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(msg)));
            Navigator.of(context).pop();
          },
          error: (msg) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(msg)));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Sign Up')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Create your account',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                CustomTextField(
                  labelText: 'Enter your Email id',
                  hintText: 'Enter your email',
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    final emailRegex = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (!emailRegex.hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Enter your name',
                  hintText: 'Enter your name',
                  prefixIcon: const Icon(Icons.person),
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required';
                    }
                    if (value.length < 2) {
                      return 'Name must be at least 2 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Enter your phone number',
                  hintText: 'Enter your phone number',
                  prefixIcon: const Icon(Icons.phone),
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone number is required';
                    }
                    final phoneRegex = RegExp(r'^\d{10}$');
                    if (!phoneRegex.hasMatch(value)) {
                      return 'Enter a valid 10 digit phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Enter your password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock),
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    final passwordRegex = RegExp(
                      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
                    );
                    if (!passwordRegex.hasMatch(value)) {
                      return 'Password must be at least 8 characters and alphanumeric';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Enter Confirm password',
                  hintText: 'Enter Confirm password',
                  prefixIcon: const Icon(Icons.lock),
                  controller: confirmPasswordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirm password is required';
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Handle sign up logic here
                      context.read<RegistrationBloc>().add(
                        RegistrationEvent.registerUser(
                          emailController.text,
                          passwordController.text,
                          nameController.text,
                          phoneNumberController.text,
                        ),
                      );
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
