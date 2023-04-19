import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:mahasiswa/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/logo/logo-primary.png'),
            ),
            SizedBox(height: 25),
            Text(
              "Universitas Pakuan",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "Unggul, Mandiri & Berkarakter",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.HOME),
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 175, 12, 12),
                minimumSize: const Size(240.0, 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
              ),
            ),
            const SizedBox(height: 17),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.DAFTAR),
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Color.fromARGB(255, 175, 12, 12),
                minimumSize: const Size(240.0, 40.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 175, 12, 12),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
