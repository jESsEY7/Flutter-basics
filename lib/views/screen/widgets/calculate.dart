import 'package:boma_farm/controllers/calculatorcontroller.dart';
import 'package:boma_farm/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Calculatorcontroller calculatorcontroller = Get.put(Calculatorcontroller());

class Calculator extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController name2 = TextEditingController();

  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              child: Image.asset("assets/image/jesse.jpg"),
            ),
            myTextField(
                controller: name,
                icon: Icons.person_3_rounded,
                hint: "Enter Your Username"),
            const SizedBox(
              height: 40,
            ),
            myTextField(
                controller: num1, icon: Icons.person_2, hint: "Enter username"),
            const SizedBox(
              height: 50,
            ),
            myTextField(
                controller: num2,
                icon: Icons.key,
                hint: "Enter password",
                isPassword: true),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() {
                  calculatorcontroller.compute(
                      name.text, int.parse(num1.text), int.parse(num2.text));
                }),
                child: const Text("Register")),
            ElevatedButton(
                onPressed: (() {
                  calculatorcontroller.compute(
                      name.text, int.parse(num1.text), int.parse(num2.text));
                }),
                child: const Text("Login")),
            Obx(() => Text(
                "Hello ${calculatorcontroller.a.value} The sum of ${calculatorcontroller.b.value} and ${calculatorcontroller.name.value} is ${calculatorcontroller.c.value} ")),
          ],
        ),
      ),
    );
  }
}
