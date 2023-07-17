import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Dochome extends StatefulWidget {
  const Dochome({Key? key}) : super(key: key);

  @override
  _DochomeState createState() => _DochomeState();
}

class _DochomeState extends State<Dochome> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 30,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/doctorlogin');
          },
          icon: Icon(Icons.arrow_back),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),
      body: _buildCurrentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentScreen() {
    switch (_currentIndex) {
      case 0:
        return HomeTab();
      case 1:
        return SearchTab();
      case 2:
        return ProfileScreen();
      default:
        return Container();
    }
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Tab'),
    );
  }
}

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 250),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username ',
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Container(
              padding: EdgeInsets.only(left: 80, top: 320),
              color: Colors.transparent,
              child: OutlinedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 40)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/dochome');
                  },
                  child: const Text("Search Id")),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  String _profileImage = '';
  Future<void> _pickProfileImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profileImage = image.path;
      });
    }
  }

  void _showImageOptionsDialog() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Choose from Gallery'),
              onTap: () {
                Navigator.of(context).pop();
                _pickProfileImage();
              },
            ),
            ListTile(
              leading: Icon(Icons.remove_circle),
              title: Text('Remove Profile Picture'),
              onTap: () {
                Navigator.of(context).pop();
                _removeProfileImage();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            GestureDetector(
              onTap: _showImageOptionsDialog, // Show the options dialog on tap
              child: CircleAvatar(
                radius: 60,
                backgroundImage: _profileImage.isNotEmpty
                    ? FileImage(File(_profileImage))
                    : null,
                child: _profileImage.isEmpty
                    ? Icon(Icons.person, size: 60, color: Colors.grey)
                    : null,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Lisence No:',
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _updateProfile,
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }

  void _removeProfileImage() {
    setState(() {
      _profileImage = '';
    });
  }

  void _updateProfile() {
    String name = _nameController.text;
    String additionalField1 =
        ''; // Get the value from the corresponding text field
    String additionalField2 =
        ''; // Get the value from the corresponding text field

    // Implement code to update the profile information
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}
