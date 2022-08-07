import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wol_asb/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('WOL ASB'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                homeController.mac = 'B0:0C:D1:62:9A:68';
                homeController.wol();
              },
              child: Text('Encender Laptop'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                homeController.mac = 'E0:69:95:A6:A4:AA';
                homeController.wol();
              },
              child: Text('Encender Desk Server'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                homeController.mac = '00:01:6C:6E:0C:E3';
                homeController.wol();
              },
              child: Text('Encender Kali Server'),
            ),
          ),
        ],
      ),
    );
  }
}
