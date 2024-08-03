import 'package:flutter/material.dart';

// Define a class to hold information about each Ford model
class FordModel {
  final String name;
  final String description;
  final String imageUrl;
  final int cost; // Assuming cost is in dollars

  FordModel({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.cost,
  });
}

class ToyotaPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'TOYOTA CAMRY ',
      description: 'The Toyota Camry is known for its reliability, comfort, and fuel efficiency. With a sleek design and advanced technology, it offers a smooth and enjoyable driving experience.',
      imageUrl: 'assets/istockphoto-905266220-612x612.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'TOYOTA RAV4',
      description: 'Toyota rav4 performance is known for its high power, capability, and reliability standards, allowing this vehicle to stand out amongst the rest.',
      imageUrl: 'assets/toyotarav4exterior_1.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'LAND CRUISER ',
      description: 'Land Cruiser available Multi-Terrain Select (MTS) helps you navigate varying landscapes with improved traction at different speeds. Crawl Control (CRAWL) * helps take on difficult terrain by automatically modulating the throttle and brakes, so you can focus on steering.',
      imageUrl: 'assets/toyota-land-cruiser-300-by-khann-international.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name: 'TOYOTA PRIUS',
      description: 'Prius Hybrid Synergy Drive® system puts more power to the ground. With up to 196 hp, available Electronic On-Demand All-Wheel Drive (AWD) and efficiency at its core, Prius is ready to turn every commute into an adventure.',
      imageUrl: 'assets/002.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'TOYOTA C0ROLLA -OO4',
      description: 'Toyota Corolla is among the best of the compact sedans. It is reliable and thrifty, but it is also refined and comfortable. Some have described it as a baby Camry or a baby Lexus, the latter particularly true with a Corolla LE equipped with the optional leather interior',
      imageUrl: 'assets/corolla_004_W610_H407.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  ToyotaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Toyota models'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: fordModels.length,
        itemBuilder: (context, index) {
          return Container(
            height: imageHeight,
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      fordModels[index].imageUrl,
                      width: MediaQuery.of(context).size.width, // Full width
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  fordModels[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(fordModels[index].description),
                Text('Cost: \$${fordModels[index].cost}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
