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

class VolvoPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: ' VOLVO S60',
      description: 'The 2024 Volvo S60 has a predicted reliability score of 71 out of 100. A J.D. Power predicted reliability score of 91-100 is considered the Best, 81-90 is Great, 70-80 is Average and 0-69 is Fair and considered below average.',
      imageUrl: 'assets/Volvo S60.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'VOLVO V60 T5',
      description: 'Fashionable exterior design, upscale interior vibes, available Polestar performance hybrid model. Base powertrain could use more oomph, infotainment system has quirks. The V60 offers an attractive alternative to a luxury SUV, providing unique style and a pleasant driving demeanor without sacrificing practicality.',
      imageUrl: 'assets/VOLVO V60 T5.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'VOLVO XC60 D4 ',
      description: 'You can trust our Volvo Penta D4 to provide high reliability, exceptional fuel efficiency and low maintenance cost. This in-line 4-cylinder, 3.7-liter diesel engine features common-rail fuel injection, double overhead camshafts and turbo. Features & Benefits.',
      imageUrl: 'assets/Volvo XC60 D4.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name:  'VOLVO V60 T6',
      description: 'The 2022 Volvo V60 T6 AWD Momentum is equipped with a[n]Gasoline 2.0L I-4 engine that can produce up to 316 hp @ 5700 rpm horsepower and a maximum torque of 295 lb-ft @ 2200 rpm. The transmission is a[n] 8-Speed Automatic with all-wheel drive.',
      imageUrl: 'assets/Volvo V60 T6.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'VOLVO XC90',
      description: 'The Core trim includes a panoramic roof with a power-operated sunshade, 19-inch wheels, heated front seats, four-zone climate control, the semi-autonomous Volvo Pilot Assist, Iron Ore interior decor, a 10-speaker high-performance sound system, a 12-inch instrument cluster, and a 9-inch center display with integrated .',
      imageUrl: 'assets/VOLVO XC90.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  VolvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Volvo models'),
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
