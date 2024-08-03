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

class BmwPage extends StatelessWidget {
  // Create a list of FordModel instances with your desired models
  final List<FordModel> fordModels = [

    FordModel(
      name: 'BMW X1',
      description: 'BMW X1 was largely accepted in the market for the three key things that it gave to its consumers. Efficiency, lower pricing on it because of the option of getting an All Wheel drive it being not available by default, and the smaller size which some of the consumers are very comfortable with. They are also reliable cars that demands less while giving more to its users. The comfort aspect is excellent as the seats are made of Alcantara material which are quite comfy.',
      imageUrl: 'assets/BMW X1.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'BMW X5',
      description: 'BMW X5 is a mid-size luxury SUV categorised by BMW as Sports Activity Vehicle (SAV) instead of SUV. It is available in an All wheel drive system that features torque-split. The E70 came in next after the E53 in 2006. The current listed F15 gen car came in later in 2013 featuring the same chassis and wheelbase as the E70. The F15 came with an introduction of an increased number of engine choices including the XDrive 40d, XDrive 35i, XDrive 25d, and SDrive 25d. This unit features a 3.0L N57 straight-6 diesel engine with a power rating of 560Nm of torque. It is fitted with heated seats that are powered, head up display, hill descent control, and an electric tailgate among other specs.',
      imageUrl: 'assets/BMW X5.jpg', // Replace with your image asset path
      cost:  41160,
    ),
    FordModel(
      name: 'BMW 318i',
      description: 'A very clean 3 Series from the 4th Gen of BMW 318i in the range of compact executive cars coded E46. They were produced between the years of 1997 and 2006 and succeeded the E36 series that stopped production in 2000. It came as an improvement from the previous E36 series as it was 70% more rigid than the E36. With better integrated electronics using CAN BUS system with engine, transmission, and stability control communicated via the CAN BUS. It runs a 2.0L N42B20 inline-4 petrol engine with a power rating of 200Nm of Torque.',
      imageUrl: 'assets/BMW 318i.jpg', // Replace with your image asset path
      cost: 31500,),
    FordModel(
      name: 'BMW 523I',
      description: 'This is among the first models of the F10 Series BMW 523i that was first sold in 2011 with the series in general coming with major improvements that included dual Clucth transmission as used with the M5, 8 speed automatic transmission gearbox, and the turbocharged V8 engine as with the S63 engine among other specs. This unit is specced with 5 leather seats, parking sensors, Autohold brake function, auto start stop feature, and a 2.0L N20B20 inline-four turbocharged engine that was comparatively better than the N52/N53 NA six cylinder engines.',
      imageUrl: 'assets/BMW 523I.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    FordModel(
      name: 'BMW X4',
      description: 'The X4 began production in 2014 as a compact luxury SUV marketed as a sports activity coupè. Its styling is similar to that of a two door coupè especially in its roof lining. The first gen was coded as the F26 and models included the XDrive 20i, XDrive 28i, 35i, 35d, 20d, all being XDrive versions. The M Performance version, the M40i came in to the market in 2016 with a power rating of 335hp. It shares it powertrain with the X3 with the I4 and I6 engine configurations. This runs the 2.0L N20B20 I4 turbocharged petrol engine with a power rating of 241hp.',
      imageUrl: 'assets/BMWX4.jpg', // Replace with your image asset path
      cost: 35000,
    ),
    // Add more models as needed
  ];
  BmwPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight * 0.9; // 70% of screen height for image

    return Scaffold(
      appBar: AppBar(
        title: Text('BMW models'),
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
