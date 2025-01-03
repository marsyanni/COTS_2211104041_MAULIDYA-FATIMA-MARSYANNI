import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nomor Telepon'),
              keyboardType: TextInputType.phone,
              onChanged: controller.setPhoneNumber,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.toNamed('/main'),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
