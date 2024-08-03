import 'package:assignment/Audi_screen.dart';
import 'package:assignment/BMW_screen.dart';
import 'package:assignment/Chevrolet_screen.dart';
import 'package:assignment/Mercedes-Benz_screen.dart';
import 'package:assignment/Nissan_screen.dart';
import 'package:assignment/Volvo_screen.dart';
import 'package:assignment/ford_screens.dart';
import 'package:assignment/toyota_screen.dart';
import 'package:assignment/volkswagen_screen.dart';
import 'package:flutter/material.dart';// Import flutter_icons

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        title: Center(
          child: Text(
            'Sheldon Car Dealers',
            style: TextStyle(
              fontSize: 20, // Adjust the font size if needed
            ),
          ),
        ),
        toolbarHeight: kToolbarHeight, // Maintain default height or adjust if needed
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Car Brands available',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('VolksSwagen Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolksSwagenPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('Chevrolet Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChevroletPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('Ford Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FordPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('Volvo Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VolvoPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text(' Toyota Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   ToyotaPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text(' Audi Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   AudiPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('Bmw Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   BmwPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('Mercedes Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   MercedesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text('NissanPage Brand'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   NissanPage()),
                );
              },
            ),
            // Other ListTile entries
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/rr-main-scaled.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'we got you covered for any car and any brand you like',
                  style: TextStyle(
                    color: Colors.white, // Ensure the text is visible over the image
                    fontSize: 18,
                    backgroundColor: Colors.black.withOpacity(0.5), // Optional: for better readability
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook Icon
                    SizedBox(width: 20),
                    // Twitter Icon
                    SizedBox(width: 20),
                    // Instagram Icon
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          // Add your Instagram link or functionality here
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.call,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    // Phone Icon with Number
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          // Add phone functionality here
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'You can reach us through 0765432154',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
