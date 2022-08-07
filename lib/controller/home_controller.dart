import 'package:get/get.dart';
import 'package:wake_on_lan/wake_on_lan.dart';

class HomeController extends GetxController {
  // Create the IPv4 broadcast address
  String ip = '192.168.0.255';
  String mac = '';

  void wol() {
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
}
