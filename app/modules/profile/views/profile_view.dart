import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:mahasiswa/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.HOME),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ],
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 175, 12, 12),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0.0,
      ),
      backgroundColor: Color.fromARGB(255, 159, 113, 72),
      body: const ProfileBodyPage(),
    );
  }
}

class ProfileBodyPage extends StatelessWidget {
  const ProfileBodyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var vokasiLight = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 255, 255, 255),
    );
    var vkTextGrey = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF484848),
    );
    var vkTextLightGrey = GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0x80484848),
    );
    var textCardLight = GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
    var textCardBold = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/im.jpeg'),
              radius: 50.0,
            ),
          ),
          const Spacer(),
          Text(
            "Yuanthio Virly",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            "yuanthiovirly26.9a.tik@gmail.com",
            style: vokasiLight,
          ),
          Text(
            "0895336035920",
            style: vokasiLight,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 175, 12, 12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("NPM", style: textCardLight),
                    const Spacer(),
                    Text("065120038", style: textCardBold),
                    const SizedBox(width: 9),
                    const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Status Keaktifan", style: textCardLight),
                    const Spacer(),
                    Text("Aktif", style: textCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Program Studi", style: textCardLight),
                    const Spacer(),
                    Text("Ilmu Komputer", style: textCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text("Jenjang Pendidikan", style: textCardLight),
                    const Spacer(),
                    Text("S1", style: textCardBold),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Nama Lengkap", style: vokasiLight),
                const Spacer(),
                Text("Yuanthio Virly", style: vokasiLight),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 255, 255, 255)),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Panggilan", style: vokasiLight),
                const Spacer(),
                Text("Yuan", style: vokasiLight),
              ],
            ),
          ),
          const Divider(color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alamat Rumah", style: vokasiLight),
                const SizedBox(height: 6),
                Text(
                    "Kp. Marga Bhakti, RT002/RW001, Bogor Selatan, Kota Bogor",
                    style: vokasiLight),
              ],
            ),
          ),
          const Divider(color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text("Kartu Mahasiswa", style: vokasiLight),
                const Spacer(),
                const Icon(Icons.badge, color: Colors.white,),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
