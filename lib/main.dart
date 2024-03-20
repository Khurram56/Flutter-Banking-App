import 'package:flutter/material.dart';

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
                        color: Color.fromARGB(248, 245, 201, 107),
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
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 95,
                      left: 20,
                      child: Text(
                        'Avaiable balance',
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
              : const SizedBox(),
      bottomNavigationBar: BottomNavigationBar(
        // iconTheme: IconThemeData(color: Colors.red),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Icon(Icons.credit_card),
            ),
            label: 'credit Card',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Icon(Icons.qr_code_scanner_rounded),
            ),
            label: 'scan',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Icon(Icons.person),
            ),
            label: 'Members',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Icon(Icons.settings),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Color.fromARGB(248, 245, 201, 107), // Color of selected icon
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
        const SizedBox(height: 20),
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
                      color: Color.fromARGB(255, 236, 139, 148),
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
            const Positioned(
              left: 30,
              top: 50,
              child: Icon(
                Icons.add_circle,
                size: 50,
                color: Color.fromARGB(248, 185, 181, 172),
              ),
            ),
            const Positioned(
              left: 150,
              top: 50,
              child: Icon(
                Icons.credit_card,
                size: 50,
                color: Color.fromARGB(248, 185, 181, 172),
              ),
            ),
            const Positioned(
              left: 255,
              top: 50,
              child: Icon(
                Icons.severe_cold_rounded,
                size: 50,
                color: Color.fromARGB(248, 185, 181, 172),
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
            const Positioned(
              left: 18,
              top: 190,
              child: Icon(
                Icons.settings_outlined,
                size: 50,
                color: Color.fromARGB(248, 185, 181, 172),
              ),
            ),
            const Positioned(
              top: 203,
              left: 85,
              child: Text(
                'Manage payment methods',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Positioned(
              right: 20,
              top: 190,
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
