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

class ChevroletPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'CHEVROLET BLAZER',
      description: 'Among the delights is a unique front-lighting sequence that illuminates when you unlock the vehicle and concludes with a flash of the Chevy bowtie. The Autosense rear liftgate opens hands-free when it senses the key fob near the rear of the vehicle – there is no awkward kicking motion required.',
      imageUrl: 'assets/mlp-img-ext-2024-blazer.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'CHEVROLET CORVETTE',
      description: 'Every aspect of the 2024 Chevy Corvette Stingray, from its aerodynamic silhouette to its luxurious interior, is crafted to captivate. Exterior features include sleek, aerodynamic lines, heated power outside mirrors with turn signals, a retractable roof, and an array of 20-spoke forged wheel designs.',
      imageUrl: 'assets/chevrolet-corvette.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'CHEVROLET AVEO ',
      description: 'All round good reliable motoring - not flashy or high performance - but great for long journeys - plenty of extras - comfortable - 5 year warranty - interest free finance. Very pleased!',
      imageUrl: 'assets/CHEVROLET AVEO.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name: 'CHEVROLET TAHOE',
      description: 'The Chevrolet Tahoe has been a mainstay in the large SUV market since its introduction in 1995. Renowned for its spacious interior, powerful engine options, and versatile capabilities, the Tahoe has attracted a wide range of customers.',
      imageUrl: 'assets/Chevrolet_Tahoe.jpg', // Replace with your image asset path
      cost: 33000,
    ),
    FordModel(
      name: 'CHEVROLET SILVERADO',
      description: 'The 2024 Chevy Silverado 1500 is a prime example of this trend. From safety-enhancing tech like Super Cruise and Transparent Trailer View to convenience features like the multifunction key fob, Chevy has stayed well ahead of the curve when it comes to designing its flagship pickup.',
      imageUrl: 'assets/JDPA_2020 Chevrolet Silverado 1500 LT Trail Boss Black Front View Small.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  ChevroletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Chevrolet models'),
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
