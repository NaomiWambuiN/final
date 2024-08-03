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

class VolksSwagenPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'VW TIGUAN ',
      description: 'The Volkswagen Tiguan has 1 Petrol Engine on offer. The Petrol engine is 1984 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the Tiguan has a mileage of 12.65 kmpl .',
      imageUrl: 'assets/vw-tiguan-2024.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'TOUAREG',
      description: 'The Volkswagen Touareg has 2 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 2967 cc and 4921 cc while the Petrol engine is 3598 cc and 4163 cc .',
      imageUrl: 'assets/touareg.jpg', // Replace with your image asset path
      cost: 96790,
    ),
    FordModel(
      name: 'VOLKSWAGEN ID4',
      description: 'Short overhangs and a wheelbase of 2,766 mm (108.9 in) add up to a length of 4,584 mm (180.5 in).',
      imageUrl: 'assets/id4.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'GOLF GTI',
      description: 'With its 2.0 TSI engine, the performance hatch delivers an impressive 180 kW that hurtles you from 0 to 100 km/h in just 6.4 seconds – and enables you to reach a top speed of 250 km/h (regulated).',
      imageUrl: 'assets/Golf_GTI.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name: 'Vw Atlas',
      description: 'While the VW Atlas is designed with premium materials and features that may rival luxury SUVs, it is marketed as a mid-size family SUV.',
      imageUrl: 'assets/VW Atlas Cross.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];

  VolksSwagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Volkswagen models'),
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
