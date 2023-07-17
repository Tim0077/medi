import 'package:flutter/material.dart';

class Doclogin extends StatefulWidget {
  const Doclogin({super.key});

  @override
  State<Doclogin> createState() => _DocloginState();
}

class _DocloginState extends State<Doclogin> {
  bool canview = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/doctor');
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 50, // Adjust the value to position the container
            left: 10,
            right: 10,
            child: Container(
              height: 425,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.only(top: 35, left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: TextFormField(
                      obscureText: canview,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              canview ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                canview = !canview;
                              });
                            },
                          ),
                          labelText: 'Password',
                          hintText: "adi sakke"),
                    ),
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 40)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/dochome');
                      },
                      child: const Text("Log in")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
