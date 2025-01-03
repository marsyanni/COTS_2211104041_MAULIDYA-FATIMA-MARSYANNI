import 'package:cots/design_system/colors.dart';
import 'package:cots/design_system/icons.dart';
import 'package:cots/design_system/typography.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'design_system/colors.dart';
import 'design_system/typography.dart';
import 'design_system/icons.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main View', style: AppTypography.heading),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to the app!', style: AppTypography.heading),
            SizedBox(height: 20),
            Text('This is a sample UI based on Figma design.',
                style: AppTypography.body),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action for the button
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppIcons.addIcon, width: 24, height: 24),
                  SizedBox(width: 8),
                  Text('Add Item', style: AppTypography.body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
