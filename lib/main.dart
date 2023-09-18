import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[

          Image.asset(
            'assets/bg3.jpg', // Ganti dengan path gambar yang sesuai
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'SehatKu adalah aplikasi mobile yang dirancang untuk mengelola kesehatan. Fokus aplikasi ini untuk pemantauan kesehatan dan perawatan medis.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                    textAlign: TextAlign.center
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person, size: 18),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 25, top: 2, bottom: 2),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock, size: 18),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 25, top: 2, bottom: 2),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 2.0,
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  child: Container(
                    width: 260,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    // Handle forgot password action here
                  },
                  child: Align(
                    alignment: Alignment.bottomLeft, // Geser ke kiri bawah
                    child: Padding(
                      padding: EdgeInsets.only(left: 80.0, bottom: 10.0), // Tambahkan margin kiri

                    ),
                  ),
                ),
                SizedBox(height: 8.0),

                SizedBox(height: 35.0),
                Text('Or login with Google:'),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle Google login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/google_logo.png',
                        height: 24.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Login with Google',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
