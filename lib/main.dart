import 'dart:developer';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Banking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello,\nAlexander 👋'),
        iconTheme: const IconThemeData(color: Colors.grey),
        foregroundColor: Colors.black,
        //   leading: IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       // Add your onPressed logic here
        //     },
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? Column(
              children: [
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(248, 245, 201, 107),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.all(5),
                    ),
                    const Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        'BVC',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      right: 20,
                      child: Text(
                        'VISA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 95,
                      left: 20,
                      child: Text(
                        'Available balance',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 120,
                      left: 20,
                      child: Text(
                        '2,640.24',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 150,
                      right: 20,
                      child: Text(
                        'Card 5679****',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 231, 225),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(5),
                    ),
                    const Positioned(
                      top: 23,
                      left: 20,
                      child: Text(
                        'Saving Goal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 37, 37, 37),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 55,
                      left: 20,
                      child: Text(
                        "\$249.24",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 55,
                      left: 87,
                      child: Text(
                        "from \$2,640.24",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 25,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.blur_circular_outlined,
                        size: 50,
                        color: Color.fromARGB(248, 245, 201, 107),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        // color: const Color.fromARGB(255, 243, 232, 135),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(5),
                    ),
                    const Positioned(
                      top: 23,
                      left: 20,
                      child: Text(
                        'Recently Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 37, 37, 37),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 23,
                      right: 20,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 60,
                      left: 20,
                      child: Icon(
                        Icons.call_received_outlined,
                        size: 50,
                        color: Color.fromARGB(248, 245, 201, 107),
                      ),
                    ),
                    const Positioned(
                      top: 63,
                      left: 75,
                      child: Text(
                        'Receive Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 85,
                      left: 75,
                      child: Text(
                        'today, 12:40',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 63,
                      right: 18,
                      child: Text(
                        '\$24.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 120,
                      left: 20,
                      child: Icon(
                        Icons.attach_money_rounded,
                        size: 50,
                        color: Color.fromARGB(248, 245, 201, 107),
                      ),
                    ),
                    const Positioned(
                      top: 123,
                      left: 75,
                      child: Text(
                        'Amazon Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 145,
                      left: 75,
                      child: Text(
                        'today, 12:40',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 123,
                      right: 18,
                      child: Text(
                        '\$50.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 180,
                      left: 20,
                      child: Icon(
                        Icons.paypal_rounded,
                        size: 50,
                        color: Color.fromARGB(248, 245, 201, 107),
                      ),
                    ),
                    const Positioned(
                      top: 183,
                      left: 75,
                      child: Text(
                        'PayPal Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 205,
                      left: 75,
                      child: Text(
                        'today, 12:40',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 183,
                      right: 18,
                      child: Text(
                        '\$16.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : _selectedIndex == 1
              ? const CardPage()
              : _selectedIndex == 2
                  ? const QRViewExample()
                  : const SizedBox(),
      // QRCodeScanner
      bottomNavigationBar: BottomNavigationBar(
        // iconTheme: IconThemeData(color: Colors.red),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              // width: 20,
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              // width: 20,
              child: Icon(Icons.credit_card),
            ),
            label: 'credit Card',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              // width: 20,
              child: Icon(Icons.qr_code_scanner_rounded),
            ),
            label: 'scan',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              // width: 20,
              child: Icon(Icons.person),
            ),
            label: 'Members',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              // width: 20,
              child: Icon(Icons.settings),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            const Color.fromARGB(248, 245, 201, 107), // Color of selected icon
        unselectedItemColor: Colors.grey, // Color of unselected icon
        onTap: _onItemTapped,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
// import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(height: 20),
        Stack(
          children: [
            Container(
              // Container above the row
              height: 100,
              // color: Colors.white,
            ),
            const Positioned(
              top: 20,
              left: 120,
              child: Text(
                'Available to spend',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              top: 30,
              left: 80,
              child: Text(
                '2,640.24',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 310,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 139, 148),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(left: 20),
                  ),
                  const Positioned(
                    top: 20,
                    left: 40,
                    child: Text(
                      'FQC',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: Text(
                      '**** 4246',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 115,
                    left: 40,
                    child: Text(
                      'Current balance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    left: 38,
                    child: Text(
                      '\$368.00',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 36,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    right: 20,
                    child: Text(
                      'VISA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 310,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 214, 245),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(8),
                  ),
                  const Positioned(
                    top: 20,
                    left: 40,
                    child: Text(
                      'FQC',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: Text(
                      '**** 4246',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 115,
                    left: 40,
                    child: Text(
                      'Current balance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    left: 38,
                    child: Text(
                      '\$368.00',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 36,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    right: 20,
                    child: Text(
                      'VISA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              width: 340,
              height: 248,
              decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 176, 214, 245),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(2),
            ),
            const Positioned(
              top: 10,
              left: 72,
              child: Text(
                'Physical card   **** 4246',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen()),
                  );
                  // const SecondScreen();
                  if (kDebugMode) {
                    print('Icon pressed!');
                  }
                },
                child: const Icon(
                  Icons.add_circle,
                  size: 50,
                  color: Color.fromARGB(248, 185, 181, 172),
                ),
              ),
            ),
            Positioned(
             left: 150,
              top: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreditCardScreen()),
                  );
                  // const SecondScreen();
                  if (kDebugMode) {
                    print('Icon pressed!');
                  }
                },
                 child: const Icon(
                  Icons.credit_card,
                  size: 50,
                  color: Color.fromARGB(248, 185, 181, 172),
                ),
              ),
            ),
            Positioned(
              left: 257,
              top: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  CardFreezeScreen( key: UniqueKey(),)),
                  );
                  // const SecondScreen();
                  if (kDebugMode) {
                    print('Icon pressed!');
                  }
                },
                child: const Icon(
                  Icons.severe_cold_rounded,
                  size: 50,
                  color: Color.fromARGB(248, 185, 181, 172),
                ),
              ),
            ),
            const Positioned(
              top: 105,
              left: 18,
              child: Text(
                'Add Money',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              top: 105,
              left: 130,
              child: Text(
                'Credit Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              top: 105,
              left: 243,
              child: Text(
                'Freeze Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              top: 155,
              left: 18,
              child: Text(
                'Manage Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(248, 185, 181, 172),
                ),
              ),
            ),
            Positioned(
              top: 185,
              left: 10,
              right: 10,
              child: CustomPaint(
                painter: LinePainter(),
              ),
            ),
            const Positioned(
              left: 18,
              top: 203,
              child: Icon(
                Icons.settings_outlined,
                size: 40,
                color: Color.fromARGB(248, 185, 181, 172),
              ),
            ),
            const Positioned(
              top: 213,
              left: 82,
              child: Text(
                'Manage payment methods',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              right: 20,
              top: 198,
              child: Icon(
                Icons.chevron_right_rounded,
                size: 50,
                color: Color.fromARGB(248, 185, 181, 172),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          const Color.fromARGB(248, 185, 181, 172) // Change color as needed
      ..strokeWidth = 0.5;

    const start = Offset(0, 0); // Change start point as needed
    final end = Offset(size.width, 0); // Change end point as needed

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// class QRScannerScreen extends StatefulWidget {
//   const QRScannerScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _QRScannerScreenState createState() => _QRScannerScreenState();
// }

// class _QRScannerScreenState extends State<QRScannerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('Scanner'),
//       ),
//     );
//   }
// }

class QRViewExample extends StatefulWidget {
  const QRViewExample({super.key});

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (result != null)
                    Text(
                        // ignore: deprecated_member_use
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                  else
                    const Text('Scan a code'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getFlashStatus(),
                              builder: (context, snapshot) {
                                return Text('Flash: ${snapshot.data}');
                              },
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.flipCamera();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getCameraInfo(),
                              builder: (context, snapshot) {
                                if (snapshot.data != null) {
                                  return Text(
                                      // ignore: deprecated_member_use
                                      'Camera facing ${describeEnum(snapshot.data!)}');
                                } else {
                                  return const Text('loading');
                                }
                              },
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller?.pauseCamera();
                          },
                          child: const Text('pause',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller?.resumeCamera();
                          },
                          child: const Text('resume',
                              style: TextStyle(fontSize: 20)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 600 ||
            MediaQuery.of(context).size.height < 600)
        ? 250.0
        : 500.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter amount',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the previous screen
              },
              child: const Text('Okay'),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(248, 245, 201, 107),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.all(5),
                    ),
                    const Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        'BVC',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      right: 20,
                      child: Text(
                        'VISA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 95,
                      left: 20,
                      child: Text(
                        'Available balance',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 120,
                      left: 20,
                      child: Text(
                        '2,640.24',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 150,
                      right: 20,
                      child: Text(
                        'Card 5679****',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}




class CardFreezeScreen extends StatefulWidget {
  const CardFreezeScreen({required Key key}) : super(key: key);

  @override
  _CardFreezeScreenState createState() => _CardFreezeScreenState();
}

class _CardFreezeScreenState extends State<CardFreezeScreen> {
  late SharedPreferences _prefs; // Instance variable to hold SharedPreferences
  bool isCardFrozen = false;

  @override
  void initState() {
    super.initState();
    _initPrefs(); // Initialize SharedPreferences when the widget is created
  }

  // Initialize SharedPreferences
  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      // Retrieve the frozen state of the card from SharedPreferences
      isCardFrozen = _prefs.getBool('isCardFrozen') ?? false;
    });
  }

  // Function to toggle card freeze state
  void toggleCardFreeze() async {
    setState(() {
      isCardFrozen = !isCardFrozen;
    });
    // Save the updated card freeze state to SharedPreferences
    await _prefs.setBool('isCardFrozen', isCardFrozen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Card Freeze'),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: isCardFrozen ? Colors.grey[300] : const Color.fromARGB(248, 245, 201, 107),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(5),
                ),
              ],
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'BVC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              top: 20,
              right: 20,
              child: Text(
                'VISA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              top: 95,
              left: 20,
              child: Text(
                'Available balance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              top: 120,
              left: 20,
              child: Text(
                '2,640.24',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 150,
              right: 20,
              child: Text(
                'Card ${isCardFrozen ? 'Frozen' : '5679****'}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 150,
              child: GestureDetector(
                onTap: toggleCardFreeze,
                child: Icon(
                  size: 70,
                  Icons.severe_cold_rounded,
                  color: isCardFrozen ? Colors.red : Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
