import 'package:flutter/material.dart';

import 'device_selection_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 36,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.bluetooth_connected,
                  size: 60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              child: Text(
                "Bluetooth Light Controller Project",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontFamily: GoogleFonts.acme().fontFamily,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6)).then((value) {
      return Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (con) => const DeviceSelectionScreen()));
    });
  }
}
