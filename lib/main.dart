import 'package:cots/routers/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'COTS Pemrograman Perangkat Bergerak',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Ganti dengan warna utama aplikasi
      ),
      initialRoute: '/onboarding', // Halaman pertama yang ditampilkan
      getPages: AppRoutes.routes, // Rute aplikasi
    );
  }
}
