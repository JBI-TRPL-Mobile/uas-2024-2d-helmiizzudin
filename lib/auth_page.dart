// lib/auth_page.dart

import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar Placeholder
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Warna latar belakang sebagai placeholder
                child: Center(
                  child: Text(
                    'Placeholder Image',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(height: 20), // Jarak antara gambar dan teks deskripsi
              Text(
                '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40), // Jarak sebelum tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk sign in
                    },
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 50), // Ukuran tombol
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk sign up
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 50), // Ukuran tombol
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}