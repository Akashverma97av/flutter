import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  bool _isSuccessVisible = false; // Whether to show the success message
  double _successOpacity = 0.0; // Opacity for the success message animation

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic here
      // For simplicity, let's just print the email and password
      print("Email: $_email\nPassword: $_password");
      _formKey.currentState!.save(); // Save the form fields

      // Perform login logic here
      // For simplicity, let's just print the email and password
      print("Email: $_email\nPassword: $_password");

      _showSuccessSnackBar(); // Show the success message
    }
  }
  void _showSuccessSnackBar() {
    setState(() {
      _isSuccessVisible = true;
      _successOpacity = 1.0;
    });

    // Hide the success message after a delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isSuccessVisible = false;
        _successOpacity = 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email";
                  }else if (!value.contains('@')){
                    return "Email is not valid";
                  }
                  // You can add more advanced email validation logic here
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  }else if(value.length<6){
                    return "Password is too short";
                  }
                  // You can add more advanced password validation logic here
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Login"),
              ),
              AnimatedOpacity(
                opacity: _successOpacity,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: const Text(
                    "Login successful!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}