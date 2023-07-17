import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './repository/dataRepository.dart';

class Doc extends StatefulWidget {
  const Doc({super.key});

  @override
  State<Doc> createState() => _DocState();
}

class _DocState extends State<Doc> {
  bool canview = false;
  @override
  final DataRepository repository = DataRepository();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: 
      // StreamBuilder<QuerySnapshot>(
      //     stream: repository.getStream(),
      //     builder: (context, snapshot) {
      //       if (!snapshot.hasData) return LinearProgressIndicator();
      //       print(snapshot.data);
      //       return Container(
            
      //         child: Text('hello'),
      //       );
      //       // _buildList(context, snapshot.data?.docs ?? []);
      //     }),

      Stack(
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
                    height: 70,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.only(top: 35, left: 20, right: 20),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[400]),
                          minimumSize: MaterialStateProperty.all(Size(320, 60)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/doctorlogin');
                      },
                      child: const Text("Doctor Login"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[400]),
                          minimumSize: MaterialStateProperty.all(Size(320, 60)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: const Text("Patient Login"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
