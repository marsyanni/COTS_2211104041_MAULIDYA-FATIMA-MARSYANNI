import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) => controller.updatePage(index),
              children: [
                Center(child: Text("Slide 1")),
                Center(child: Text("Slide 2")),
                Center(child: Text("Slide 3")),
              ],
            ),
          ),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Page: ${controller.currentPage.value + 1}"),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.currentPage.value < 2) {
                        controller.updatePage(controller.currentPage.value + 1);
                      } else {
                        Get.toNamed('/login'); // Navigasi ke halaman login
                      }
                    },
                    child: Text(
                        controller.currentPage.value < 2 ? "Next" : "Finish"),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
