import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool canview = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/doctor');
            },
          )),
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(
            bottom: 50, // Adjust the value to position the container
            left: 10,
            right: 10,
            child: Container(
              height: 525,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                  Container(
                    padding: EdgeInsets.only(right: 40),
                    alignment: Alignment.topRight,
                    child: const Text(
                      "Forgot password?",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: const Text("Log in")),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      "_______________ or _______________"),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 0, left: 3, bottom: 0, right: 6),
                    height: 30,
                    width: 280,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 5),
                            blurRadius: 30,
                            blurStyle: BlurStyle.inner)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 6),
                          child: Image(
                            alignment: Alignment.topLeft,
                            image: AssetImage("assets/icons8-google-48.png"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            "Continue with google",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 0, left: 3, bottom: 0, right: 6),
                    height: 30,
                    width: 280,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 5),
                            blurRadius: 30,
                            blurStyle: BlurStyle.inner)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 6),
                          child: Image(
                            alignment: Alignment.topLeft,
                            image: AssetImage("assets/icons8-facebook-48.png"),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              "Continue with Facebook",
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          "Dont have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/signup');
                        },
                        child: const Text(
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          "Create an account",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
