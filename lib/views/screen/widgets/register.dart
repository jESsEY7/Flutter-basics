import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/image/pexels-jack-redgate-333633-3014040.jpg", // Path to your background image
              fit: BoxFit.cover,
            ),
          ),
          // Main Content
          Positioned.fill(
            child: Container(
              color:
                  Colors.black.withOpacity(0.6), // Dark overlay for readability
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 50), // Spacing for the status bar
                    const Text(
                      "WELCOME TO THE BOMA",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // First Name TextField
                    const Text(
                      "First Name",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person, color: Colors.white),
                        hintText: "Enter First Name",
                        hintStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Second Name TextField
                    const Text(
                      "Second Name",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person_2_outlined,
                            color: Colors.white),
                        hintText: "Enter Second Name",
                        hintStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Email TextField
                    const Text(
                      "Email",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: const Icon(Icons.email, color: Colors.white),
                        hintText: "Enter Email",
                        hintStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),

                    // Phone TextField
                    const Text(
                      "Phone",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: const Icon(Icons.phone, color: Colors.white),
                        hintText: "Enter Phone",
                        hintStyle: const TextStyle(color: Colors.white70),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 40),

                    // Register Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      onPressed: () {
                        Get.toNamed("/register");
                        // Handle registration logic here
                      },
                      child: const Text("Register"),
                    ),
                    const SizedBox(height: 20),

                    // Navigate to Login Button
                    TextButton(
                      onPressed: () {
                        Get.toNamed(
                            "/login"); // Assuming a route named '/login' is set up
                      },
                      child: const Text(
                        "Already have an account? Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
