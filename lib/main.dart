import 'package:flutter/material.dart';
import 'package:qr_code_scanner_generator/generate_qr_qode.dart';
import 'package:qr_code_scanner_generator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Scanner and Generator'),backgroundColor: Colors.yellow,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScanQrCode()));
                });
                },
              child: const Text('Scan QR Code'),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GenerateQrQode()));

                });
                },
              child: const Text('Generate QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
