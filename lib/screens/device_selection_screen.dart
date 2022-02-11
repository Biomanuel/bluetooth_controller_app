import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import 'interaction_screen.dart';
import 'connection.dart';

class DeviceSelectionScreen extends StatelessWidget {
  const DeviceSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Connection'),
      ),
      body: SelectBondedDevicePage(
        onDeviceSeleted: (device1) {
          BluetoothDevice device = device1;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return InteractionScreen(server: device);
              },
            ),
          );
        },
      ),
    ));
  }
}
