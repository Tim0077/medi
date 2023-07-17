import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Pmform extends StatefulWidget {
  const Pmform({super.key});

  @override
  State<Pmform> createState() => _PmformState();
}

class _PmformState extends State<Pmform> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 30,
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/signup');
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                Text(
                  "Enter the Details",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your name',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your age',
                    labelText: 'Age',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Enter a phone number',
                    labelText: 'Phone',
                  ),
                ),
                TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        _dateController.text =
                            DateFormat('yyyy-MM-dd').format(picked);
                      });
                    }
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your Blood Group',
                    labelText: 'Blood Group',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.vaccines),
                    hintText: 'Enter your Blood Group',
                    labelText: 'Vaccines',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
