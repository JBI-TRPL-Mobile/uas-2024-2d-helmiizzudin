
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;
                  print('Email: $email, Password: $password');

                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {

                },
                child: Text('Forget Password?'),
              ),
              SizedBox(height: 20),
              Text('or sign in with'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/google.jpeg',width: 20,height: 20,), // Ganti dengan gambar ikon Google
                    onPressed: () {

                    },
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Image.asset('assets/images/fb.jpeg',width: 20,height: 20,), // Ganti dengan gambar ikon Facebook
                    onPressed: () {

                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Don't have an account? Sign Up Now"),
            ],
          ),
        ),
      ),
    );
  }
}