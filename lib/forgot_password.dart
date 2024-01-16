
import 'package:flutter/material.dart';
import 'sign_page.dart';


class ForgotPassword extends StatelessWidget {

  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();

    void returnSign(){

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignPage(),
        ),
      );
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            returnSign();
          }
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 12 , right: 12),
              child: TextField(
                controller: passwordController,
                obscureText: true, // To hide the entered password
                decoration: InputDecoration(
                  labelText: 'Password',
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
            ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 12 , right: 12),
              child: GestureDetector(
                onTap: () {

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
            ),





          ],
        ),
      ),
    );
  }
}
