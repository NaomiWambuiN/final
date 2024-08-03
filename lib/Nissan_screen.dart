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

class NissanPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'NISSAN JUKE',
      description: 'It has stylish looks, available AWD capabilities and sporty performance at a great starting price.',
      imageUrl: 'assets/NISSAN JUKE.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'NISSAN NOTE',
      description: 'Advanced, affordable technology, dynamic design and premium-class attention to detail are key qualities that define the new Nissan Note. Marking the start of an exciting new Nissan product drive, the new Note has been designed and engineered to create a bold new B-segment competitor.',
      imageUrl: 'assets/NISSAN NOTE.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'NISSAN RICH ',
      description: 'Nissan Rich is a pickup truck and an SUV produced through a joint venture of Chinese Auto Dongfeng and Nissan. It is based on the Nissan F-Alpha Platform meaning a pickup with a long roof bed cover. It uses a petrol engine with a 2.4L Rating mated to a 5 speed manual gearbox.',
      imageUrl: 'assets/NISSAN RICH.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'NISSAN SKYLINE',
      description: 'A partnership between Nissan and Daimler between 2014 and 2019 gave birth to this amazing engineering piece, the Skyline 200Gt-t. The car operated Daimlers 2.0L M274 DE20 turbocharged direct injection 4 cylinder petrol engine with a power rating of 208hp and 350Nm of torque and is mated to Daimlers 7G-Tronic auto with manual shift mode. Nissan also did well in the body design of Skyline creating a curvy sharp line body that is sport oriented as seen also with the dual-tip exhaust tailpipes. You get leather seats with the front seats having heating functionality, dual zone climate controls, Multifunctional steering wheel, and cup holders.',
      imageUrl: 'assets/NISSAN SKYLINE.jpg', // Replace with your image asset path
      cost: 33000,
    ),
    FordModel(
      name: 'NISSAN XTRAIL',
      description: 'The XTRAIL is equipped with an automatic transmission, daytime running lights, Multifunctional tilt and telescopic steering wheel, and traction control.',
      imageUrl: 'assets/NISSAN XTRAIL.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  NissanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('Nissan models'),
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
