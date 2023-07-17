import 'package:flutter/material.dart';
import './user.dart';
// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   bool canview = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed('/login');
//             },
//             icon: Icon(Icons.arrow_back)),
//         backgroundColor: Colors.transparent,
//       ),
//       backgroundColor: Colors.red,
//       body: Stack(
//         children: [
//           Positioned(
//             bottom: 50, // Adjust the value to position the container
//             left: 10,
//             right: 10,
//             child: Container(
//               height: 550,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     alignment: Alignment.topCenter,
//                     margin: const EdgeInsets.all(10),
//                     padding:
//                         const EdgeInsets.only(top: 15, left: 20, right: 20),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[300],
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50),
//                             borderSide: BorderSide.none),
//                         labelText: 'Fullname',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(10),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[300],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           borderSide: BorderSide.none,
//                         ),
//                         labelText: 'Email',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(10),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[300],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           borderSide: BorderSide.none,
//                         ),
//                         labelText: 'Phone number',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(10),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[300],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           borderSide: BorderSide.none,
//                         ),
//                         labelText: 'Password',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(10),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.grey[300],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           borderSide: BorderSide.none,

//                         ),
//                         labelText: 'Re-enter Password',

//                       ),
//                     ),
//                   ),
//                   OutlinedButton(
//                       style: ButtonStyle(
//                           foregroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.red[400]),
//                           minimumSize: MaterialStateProperty.all(Size(220, 50)),
//                           shape: MaterialStateProperty.all(
//                               RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20)))),
//                       onPressed: () {
//                         Navigator.of(context).pushReplacementNamed('/pmform');
//                       },
//                       child: const Text("Sign Up")),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool canview = false;

  // Define variables to store the form values
  String fullname = '';
  String email = '';
  String phoneNumber = '';
  String password = '';
  String reEnterPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/login');
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(
            bottom: 50, // Adjust the value to position the container
            left: 10,
            right: 10,
            child: Container(
              height: 550,
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
                        const EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          fullname = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Fullname',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          phoneNumber = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Phone number',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          reEnterPassword = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Re-enter Password',
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[400]),
                      minimumSize: MaterialStateProperty.all(Size(220, 50)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Access the stored values
                      print('Fullname: $fullname');
                      print('Email: $email');
                      print('Phone Number: $phoneNumber');
                      print('Password: $password');
                      print('Re-enter Password: $reEnterPassword');
                      Navigator.of(context).pushReplacementNamed('/pmform');
                      // Perform further actions with the form values
                    },
                    child: const Text("Sign Up"),
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
