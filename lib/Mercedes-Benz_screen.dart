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

class MercedesPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: ' BENZ C200',
      description: 'The Mercedes-Benz C-Class C200 is such a stylish sedan and I would totally have one. The driving performance, luxurious features and practical size made it a winning combo for my family. The price point is definitely up there but you do get a high-end build for the cash.',
      imageUrl: 'assets/Benz c200.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: ' BENZ E250',
      description: 'It is quite clear and has good bass. The COMAND system is a basic one and only incorporates the bluetooth phone functions and the stereo options. The interiors have a very simple design and is quite well built.',
      imageUrl: 'assets/Benz E250.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'BENZ G63 ',
      description: 'It delivers an impressive 586 horsepower and 850 Nm of torque. Paired with the AMG Speedshift TCT 9G 9-speed automatic transmission, this vehicle accelerates from 0-100km/h in just 4.5 seconds and reaches a top speed of 240km/h.',
      imageUrl: 'assets/Benz G63.jpg', // Replace with your image asset path
      cost: 31500,
    ),
    FordModel(
      name:  'BENZ  GLS350d',
      description: 'The GLS350d, with its diesel engine, gets the best mileage of the models, EPA-rated at 22 miles per gallon Combined city and highway. The GLS450 with its V6 gets 17/22/19 mpg City/Highway/Combined.',
      imageUrl: 'assets/Benz GLS350d.jpg', // Replace with your image asset path
      cost: 45000,
    ),
    FordModel(
      name: 'BENZ S400',
      description: 'This Mercedes is packed with technology to help make urban driving as comfortable as possible. The Mercedes has a 360-degree camera fitted as standard so squeezing into tight spaces is not the heart-and-mouth moment you might expect it to be.',
      imageUrl: 'assets/Benz S400.jpg', // Replace with your image asset path
      cost: 25000,
    ),
    // Add more models as needed
  ];
  MercedesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('MercedesBenz models'),
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
