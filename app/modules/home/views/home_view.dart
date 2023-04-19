import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import 'package:mahasiswa/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Selamat Datang',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: Image.asset("assets/images/mahasiswa.png"),
        ),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.PROFILE),
            icon: const Icon(Icons.account_circle),
            color: Colors.white,
          ),
        ],
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 175, 12, 12),
        foregroundColor: Color.fromARGB(255, 132, 0, 0),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 100,
              width: Get.width,
              color: Color.fromARGB(255, 175, 12, 12),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 159, 113, 72),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Yuanthio Virly",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    letterSpacing: 1.5,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              "065120038",
                              style: GoogleFonts.poppins(
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Divider(
                              color: Colors.white,
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ilmu Komputer B",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 175, 12, 12),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "2020",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Container(
                  height: 7,
                  color: Color(0xFFF1F2F6),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   height: 3,
                //   color: Color(0xFFF1F2F6),
                // ),
                // Container(
                //   margin: EdgeInsets.only(bottom: 10),
                //   height: 70,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       ItemNav(
                //         icon: "home",
                //         status: true,
                //         title: "Beranda",
                //       ),
                //       ItemNav(
                //         icon: "help",
                //         status: false,
                //         title: "Bantuan",
                //       ),
                //       ItemNav(
                //         icon: "account",
                //         status: false,
                //         title: "Profile",
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// class ItemNav extends StatelessWidget {
//   const ItemNav({
//     required this.status,
//     required this.title,
//     required this.icon,
//     super.key,
//   });

//   final bool status;
//   final String title;
//   final String icon;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: 20,
//           child: Image.asset(
//             (status == true)
//                 ? "assets/icons/$icon-active.png"
//                 : "assets/icons/$icon.png",
//             fit: BoxFit.contain,
//           ),
//         ),
//         SizedBox(height: 5),
//         Text(
//           title,
//           style: GoogleFonts.openSans(
//             textStyle: TextStyle(
//               color: (status == true) ? Color(0xFF755799) : Color(0xFF747D8C),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
