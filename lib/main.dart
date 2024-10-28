import 'package:boma_farm/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApplication());
}

TextEditingController num1 = TextEditingController();
TextEditingController num2 = TextEditingController();
TextEditingController name = TextEditingController();

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: routes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 207, 221, 130),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("BOMA RHODES"),
          foregroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed("/login");
              },
              icon: const Icon(
                Icons.key,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.toNamed("/register");
              },
              icon: const Icon(Icons.app_registration),
            ),
            IconButton(
              onPressed: () {
                Get.toNamed("/settings");
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Positioned(
                top: 80,
                left: MediaQuery.of(context).size.width / 2 -
                    50, // Center horizontally
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      "assets/image/pexels-matthew-montrone-230847-733478.jpg"),
                ),
              ),
              const Text("Login"),
              myTextField(
                controller: num1,
                icon: Icons.person,
                hint: "Enter Username",
              ),
              const SizedBox(
                height: 40,
              ),
              myTextField(
                controller: num2,
                icon: Icons.key,
                hint: "Password",
                isPassword: true,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/login");
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Function to add two numbers
int add(int a, int b) => a + b;

// Custom TextField Widget
Widget myTextField({
  required TextEditingController controller,
  required IconData icon,
  required String hint,
  bool isPassword = false,
}) {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintText: hint,
      border: const OutlineInputBorder(),
    ),
  );
}
