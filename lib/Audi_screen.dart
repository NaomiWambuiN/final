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

class AudiPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'AUDI A3',
      description: 'Highs Classy looks, great fuel economy, lively handling. Lows Tight rear seat, puny trunk space, some interior materials look cheap. Verdict It might not be as deluxe inside as Audi is other sports sedans, but the A3 delivers a pleasantly involving driving experience that is similar to its larger siblings.',
      imageUrl: 'assets/AUDI A3.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'AUDI A5',
      description: 'This "B9" generation of the A5 is equipped with a 7 speed dual Clucth transmission, Multifunctional steering wheel, adaptive headlights, daytime running LED lights, virtual instrument cluster, premium surround sound system, and Adaptive cruise control.',
      imageUrl: 'assets/AUDI A5.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'AUDI Q3',
      description: 'This the 2WD Spec Q3 fitted with a 6 speed automatic transmission gearbox(S-Tronic), bucket styled seats, premium sound system, Multifunctional steering wheel, rear mounted spoiler, side impact airbags, and engine immobilizer.',
      imageUrl: 'assets/AUDI Q3.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'AUDI S3',
      description: '',
      imageUrl: 'assets/AUDI S3.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'AUDI Q5',
      description: 'Audi S3 twins with the popular Volkswagen Golf R. It is a hot hatch version of the A3. This is the 3rd Gen, internally coded Typ 8V, produced from 2013 to 2020. This model uses the 3rd Gen EA888 2.0L I4 turbo engine with a power rating of 300hp mated to a 6 speed S Tronic dual clutch transmission. It has a 6-speed manual transmission and Quattro All Wheel drive system as standard. A facelift was done mid-2016 with the major changes being the taillights with dynamic indicators, angular headlights than before, visually appealing front and rear bumpers plus diffuser, and of course the big trade being the 10 more horsepower added post-facelift.',
      imageUrl: 'assets/AUDI Q5.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  AudiPage({Key? key}) : super(key: key);

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
