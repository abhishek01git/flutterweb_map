import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class mapViewScreen extends StatefulWidget {
  const mapViewScreen({super.key});

  @override
  State<mapViewScreen> createState() => _mapViewScreenState();
}

class _mapViewScreenState extends State<mapViewScreen> {
  Future<void> geolocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition();
      print("latitude:${position.altitude},longitude:${position.altitude}");
    } catch (e) {
      print('Error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            geolocation();
          },
          child: const Text("click me"),
        ),
      ),
    );
  }
}
