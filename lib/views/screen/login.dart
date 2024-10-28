import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("DASHBOARD"),
        foregroundColor: const Color.fromARGB(255, 147, 156, 16),
        centerTitle: true,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/login");
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            "assets/image/pexels-anniroenkae-3110502.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          const Center(
            child: Text(
              "Dashboard Is Not Set",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
