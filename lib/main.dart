import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top half with icon
              Expanded(
                child: Center(
                  child: Image.asset('images/icon.png', width: 100, height: 100), // Replace with your icon path
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'By tapping ‘Sign in’ you agree to our Terms Learn how we process your data in our Privacy Policy and Cookies Policy.\n',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                      const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CreateAccountPage()),
                        );
                      },
                      child: const Text('CREATE ACCOUNT'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50), // Adjust size as needed
                      ),
                    ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignInPage()),
                          );
                        },
                        child: const Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 50),
                          foregroundColor: Colors.white, backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.white, width: 0.5), // Add border here
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {}, // Implement trouble signing in logic
                        child: const Text('Trouble signing in?'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAccountPage extends StatelessWidget
{
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56), // Adjust height as needed
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(width: 10), // Adjust spacing as needed
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage())),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft, // Align to the left edge of the parent
              child: const Text(
                'Create Your \nAccount',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'User Name',
                fillColor: Color(0xF3F4F6), // Set background color
                filled: true, // Enable background fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Set rounded corners
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Color(0xF3F4F6), // Set background color
                filled: true, // Enable background fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Set rounded corners
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Color(0xF3F4F6), // Set background color
                filled: true, // Enable background fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Set rounded corners
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                fillColor: Color(0xF3F4F6), // Set background color
                filled: true, // Enable background fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Set rounded corners
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create Account'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50), // Adjust size as needed
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '---- OR CREATE WITH ----',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {}, // Implement Facebook sign-in
                  icon: const Icon(Icons.facebook),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {}, // Implement Google sign-in
                  icon: const Icon(Icons.g_mobiledata),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {}, // Implement Apple sign-in
                  icon: const Icon(Icons.apple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Go back to previous page
        ),
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 100),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'User Name',
                fillColor: Color(0xF3F4F6),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Color(0xF3F4F6),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {}, // Implement sign-in logic
              child: const Text('Sign In'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {}, // Implement forgot password logic
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}


