import 'package:flutter/material.dart';
import 'package:wake_on_lan/wake_on_lan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void wol(String mac) {
      String ip = '192.168.0.255';
      // Validate that the two strings are formatted correctly
      if (!IPv4Address.validate(ip)) {
        print('Invalid IPv4 Address String');
        return;
      }
      if (!MACAddress.validate(mac)) {
        print('Invalid MAC Address String');
        return;
      }

      // Create the IPv4 and MAC objects
      IPv4Address ipv4Address = IPv4Address(ip);
      MACAddress macAddress = MACAddress(mac);
      // Send the WOL packet
      // Port parameter is optional. Default 9.
      WakeOnLAN(ipv4Address, macAddress, port: 9).wake();
      print('Enviando');
    }

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
                wol('B0:0C:D1:62:9A:68');
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
                wol('E0:69:95:A6:A4:AA');
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
                wol('00:01:6C:6E:0C:E3');
              },
              child: Text('Encender Kali Server'),
            ),
          ),
        ],
      ),
    );
  }
}
