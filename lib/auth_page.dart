import 'package:flutter/material.dart';
import 'login_page.dart';
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
              Image.asset(
                'assets/images/eagle.png',width: 200,height: 200,fit: BoxFit.cover,),
              SizedBox(height: 20),
              Text(
                '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 40), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),);
                    },
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 50),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 50),
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