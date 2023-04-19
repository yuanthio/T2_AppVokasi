import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  const DaftarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar'),
        backgroundColor: Color.fromARGB(255, 175, 12, 12),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Daftar is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
