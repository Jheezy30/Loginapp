

import 'package:flutter/material.dart';
import 'details_page.dart';
import 'forgot_password.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void forgotPassword(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context) => ForgotPassword()
          ),
      );
    }

    void signIn() {
      String phone = phoneController.text;
      String password = passwordController.text;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(phone: phone, password: password),
        ),
      );
    }


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
            
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            
                ),
                SizedBox(height: 16),
                TextField(
                  controller: phoneController,

                  decoration: InputDecoration(
                    labelText: 'Phone',
                    isDense: true,

                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
                    ),
                  ),
                ),
            
            
                Padding(
                  padding: const EdgeInsets.only( top: 20.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true, // To hide the entered password
                    decoration: InputDecoration(
                      labelText: 'Password',
                      isDense: true,
                      labelStyle: TextStyle(color: Colors.black),
                      suffix: GestureDetector(
                        onTap: () {
                          return forgotPassword();
                          // Handle the "Forgot Password" action
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
                      ),
                    ),
                  ),
                ),
            
                SizedBox(height: 60),
            
                GestureDetector(
                  onTap: () {
                    return signIn();
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(100),
                    elevation: 5,
                    shadowColor: Colors.amber.shade900,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow.shade900,
                            Colors.yellow.shade700,
                            Colors.yellow,
            
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                          child: Text("SIGN IN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                          )
                      ),
                    ),
                  ),
                ),
                ),
                SizedBox(height: 30,),
            
                    RichText(
            text: TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              children: [
                TextSpan(
                  text: "Sign up",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
                    ),
                SizedBox(height: 80,),
            
                SizedBox(height: 20),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.grey.withOpacity(0.3),
                        Colors.grey.withOpacity(0.6),
                        Colors.grey.withOpacity(0.9),
                        Colors.white,
                      ],
                      stops: [0.0, 0.3, 0.7, 1.0],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Or sign in with:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle the Facebook button click
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "images/facebook_logo.png", // Replace with your Facebook image asset path
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Handle the Google button click
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.withOpacity(0.5)),
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "images/google_logo.png", // Replace with your Google image asset path
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


          ],
          ),

          ),
        ),
      ),

      );


  }
}
